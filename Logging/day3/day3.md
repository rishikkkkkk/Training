# 📊 ELK Stack Logging & Monitoring Setup

## Objective

To set up a centralized logging and monitoring system using the ELK stack (Elasticsearch, Logstash, Kibana) with Filebeat for log shipping from an application.

---

## Architecture

```
Application Logs → Filebeat → Logstash → Elasticsearch → Kibana
```

---

## Tech Stack

* Elasticsearch (Data storage & search)
* Logstash (Log processing pipeline)
* Kibana (Visualization & dashboarding)
* Filebeat (Log shipper)
* Docker & Docker Compose

---

##  Project Structure
```
ELK-project/
│
├── app/
│   ├── logs/
│   │   └── app.log
│   ├── app.py
│   └── Dockerfile
│
├── filebeat.yml
├── logstash.conf
├── docker-compose.yml
```

![alt text](images/image.png)
---
## File Setup:


##  Steps Performed

### 1. Application Logging

* Generated application logs in:

  ```
  /app/logs/app.log
  ```
* Logs include different events like:

  * INFO (user actions, success events)
  * ERROR (failures)

---

### 2. Filebeat Configuration

* Configured Filebeat to read logs from:

![alt text](images/image-1.png)

* Forward logs to Logstash:

![alt text](images/image-2.png)
---

### 3. Logstash Pipeline

* Configured Logstash to receive logs from Filebeat:

![alt text](images/image-3.png)

* Added Filter:

![alt text](images/image-5.png)

* Forward logs to Elasticsearch:

![alt text](images/image-4.png)
---

### 4. Elasticsearch

* Stores logs as indices:

  ```
  logs-YYYY.MM.DD
  ```
* Enables fast querying and indexing of log data

---

### 5. Kibana Setup

* Created a Data View:

  ```
  logs-*
  ```
* Used `@timestamp` for time-based analysis

![alt text](images/image-6.png)

![alt text](images/image-7.png)
---

## 📊 Dashboard Created

### 1. Logs Over Time

* Visualizes log volume using `@timestamp`
* Helps identify spikes in activity

![alt text](images/image-8.png)
---

### 2. Error vs Info Trend

* Filters:

  * `message: "ERROR"`
  * `message: "INFO"`
* Tracks system health over time

![alt text](images/image-9.png)
---

![alt text](images/image-10.png)