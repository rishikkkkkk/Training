const express = require('express');
const client = require('prom-client');

const app = express();

// collect default metrics
client.collectDefaultMetrics();

app.get('/', (req, res) => {
  res.send('Hello from monitored app 🚀');
});

// metrics endpoint
app.get('/metrics', async (req, res) => {
  res.set('Content-Type', client.register.contentType);
  res.end(await client.register.metrics());
});

app.listen(5000, () => {
  console.log('App running on port 5000');
});