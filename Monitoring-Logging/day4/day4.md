# Lab Assignment: Application Monitoring using Docker Compose
## Objective:
● Deploy a sample application using Docker Compose
● Configure a monitoring stack using Prometheus and Grafana
● Collect both infrastructure and application-level metrics
● Build custom dashboards to visualize system and application behavior
## Architecture Overview:
You will set up a monitoring system with the following components:
● Application exposing metrics (/metrics endpoint)
● Prometheus for scraping and storing metrics
● Grafana for visualization
● Node Exporter for system-level metrics

## Task 1: Project Setup:
### Create a project directory structure:
```
monitoring-project/
│
├── docker-compose.yml
├── prometheus/
│   └── prometheus.yml
├── app/
│   └── app.py
```
### Define required configuration files:
#### prometheus.yml:
```
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: 'app'
    static_configs:
      - targets: ['app:5000']

  - job_name: 'node'
    static_configs:
      - targets: ['node-exporter:9100']
```
#### docker-compose.yml:
```
name: sample-app

version: "3.8"

services:
  app:
    build: ./app
    container_name: sample-app
    ports:
      - "5000:5000"
    restart: always

  prometheus:
    image: prom/prometheus
    container_name: prometheus
    volumes:
      - ./prometheus.yml:/etc/prometheus/prometheus.yml
    ports:
      - "9090:9090"
    restart: always

  node_exporter:
    image: prom/node-exporter
    container_name: node-exporter
    ports:
      - "9100:9100"
    restart: always

  grafana:
    image: grafana/grafana
    container_name: grafana
    ports:
      - "3002:3000"
    restart: always
```