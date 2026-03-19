const express = require("express");
const mysql = require("mysql2");
const bodyParser = require("body-parser");

const app = express();
app.use(bodyParser.json());

let db;

// 🔁 Retry DB connection until success
function connectDB() {
const db = mysql.createConnection({
  host: "mysql",
  user: "root",
  password: process.env.MYSQL_ROOT_PASSWORD,
  database: process.env.MYSQL_DATABASE
});

  db.connect((err) => {
    if (err) {
      console.log("❌ MySQL not ready, retrying in 5 sec...");
      setTimeout(connectDB, 5000); // retry every 5 sec
    } else {
      console.log("✅ Connected to MySQL");

      // Create table AFTER connection
      db.query(`
        CREATE TABLE IF NOT EXISTS users (
          id INT AUTO_INCREMENT PRIMARY KEY,
          name VARCHAR(100),
          city VARCHAR(100),
          email VARCHAR(100),
          password VARCHAR(100),
          location VARCHAR(100)
        )
      `);
    }
  });
}

connectDB();

// Signup API
app.post("/signup", (req, res) => {
  if (!db) {
  return res.status(503).send("Please wait, DB initializing...");
}

  const { name, city, email, password, location } = req.body;

  const sql = "INSERT INTO users (name, city, email, password, location) VALUES (?, ?, ?, ?, ?)";

  db.query(sql, [name, city, email, password, location], (err) => {
    if (err) {
      console.error(err);
      return res.status(500).send("Error saving user");
    }
    res.send("User registered successfully!");
  });
});

app.listen(3000, () => {
  console.log("Backend running on port 3000");
});