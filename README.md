**Designed and implemented an SLI/SLO-based observability system on Kubernetes using Prometheus, Sloth, and Grafana. Reduced alert 
fatigue by implementing error-budget-driven alerting and created reliability dashboards aligned with business KPIs.**

1️ Set up Kubernetes Cluster (k3d)
Created a lightweight Kubernetes cluster locally to simulate a production environment.

2️ Installed Observability Stack
Deployed Prometheus, Alertmanager, Grafana, and exporters using kube-prometheus-stack via Helm.

3️ Deployed Application Layer
Deployed NGINX (web app) and MySQL inside Kubernetes and exposed NGINX via NodePort for testing.

4️ Enabled Metrics Collection
Configured NGINX metrics using nginx-prometheus-exporter and created a ServiceMonitor for Prometheus scraping.

5️ Validated Metrics Pipeline
Verified metrics in Prometheus UI (/targets) and tested request traffic using load-generation tools.

6️ Defined Service Level Indicators (SLIs)
Identified business-relevant SLIs:

Availability (% of successful requests)

Latency (95th percentile response time)

7️ Defined 30-Day Service Level Objectives (SLOs)
Set reliability targets:

99.9% availability over 30 days

95% of requests under 300ms

8️ Implemented Sloth for SLO Automation
Used Sloth to generate Prometheus recording rules and multi-window burn-rate alert rules based on defined SLOs.

9️ Created Grafana SLO Dashboard
Built dashboards displaying:

Availability %

Error budget remaining

Burn rate

Latency trends

Request rate
