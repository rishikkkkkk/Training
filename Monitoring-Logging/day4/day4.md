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
```
monitoring-project/
│
├── docker-compose.yml
├── prometheus/
│   └── prometheus.yml
├── app/
│   └── app.py
```