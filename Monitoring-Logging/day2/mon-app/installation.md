## 🚀 Monitoring Stack Setup (Prometheus + Grafana + Node Exporter + App)

### 📥 1. Clone Repository

```bash
git clone <repo-url>
cd mon-stack
```

---

### 🐳 2. Start Services (Docker Required)

Make sure Docker & Docker Compose are installed.

```bash
docker compose up -d --build
```

---

### 🌐 3. Access Services

| Service       | URL                   |
| ------------- | --------------------- |
| App           | http://localhost:5000 |
| Prometheus    | http://localhost:9090 |
| Node Exporter | http://localhost:9100 |
| Grafana       | http://localhost:3002 |

---

### 🔍 4. Verify Prometheus Targets

1. Open Prometheus UI
2. Go to: **Status → Targets**
3. Ensure all services are **UP**

---

### 📊 5. Setup Grafana

1. Open Grafana → http://localhost:3002
2. Login:

   ```
   Username: admin
   Password: admin
   ```

---

### 🔗 6. Add Prometheus Data Source

1. Go to **Connections → Data Sources → Add data source**
2. Select **Prometheus**
3. Set URL:

   ```
   http://prometheus:9090
   ```
4. Click **Save & Test**

---

### 📈 7. Import Dashboard

1. Go to **Dashboards → Import**
2. Enter Dashboard ID:

   ```
   1860
   ```
3. Select Prometheus data source
4. Click **Import**

---

### ✅ 8. Verify Metrics

In Prometheus, run:

```promql
up
```

Expected output:

```
app = 1
node_exporter = 1
prometheus = 1
```

---

## 🛑 Stop Services

```bash
docker compose down
```

---

## 🧠 Notes

* Ensure ports **3002, 9090, 9100, 5000** are free
* Docker must be running before starting services
* Use service names (not localhost) inside Prometheus config

---
