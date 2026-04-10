from flask import Flask
import logging
import random
import time
import os

app = Flask(__name__)

# Ensure logs directory exists
os.makedirs("../logs", exist_ok=True)

logging.basicConfig(
    filename="../logs/app.log",
    level=logging.INFO,
    format='%(asctime)s - %(levelname)s - %(message)s'
)

@app.route('/')
def home():
    logging.info("Home endpoint hit")

    if random.random() < 0.3:
        logging.error("Simulated error occurred!")
        return "Error", 500

    return "Hello ELK", 200


if __name__ == "__main__":
    while True:
        logging.info("Background log generated")

        if True:
            logging.error("Background error occurred!")

        time.sleep(2)