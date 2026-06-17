# Jagan Pudari — Cloud & Backend Systems Portfolio

## 👋 About This Repository

This repository is a collection of production-style engineering systems I’ve built to demonstrate end-to-end ownership across backend systems, cloud infrastructure, data pipelines, and Kubernetes-based platforms.

I focus on building and shipping systems that behave like real production platforms, not just tutorials.

---

## ⚙️ Core Engineering Stack

**Cloud:** AWS (EKS, EC2, S3), Azure (AKS, Databricks)  
**Backend:** Python, Java, Ruby (Rails), REST APIs  
**Data:** SQL, ETL/ELT pipelines, Databricks, Delta Lake  
**Infrastructure:** Kubernetes, Docker, Terraform  
**CI/CD:** GitHub Actions, Jenkins, GitOps  
**Observability:** Prometheus, Grafana  

## 🏗️ High-Level System Architecture

```mermaid
flowchart TD

User[User / Client Requests] --> API[Backend APIs / Services]

API --> K8S[Kubernetes Cluster EKS AKS]
K8S --> Microservices[Microservices Backend Services]

Microservices --> DB[Databases Data Stores]
Microservices --> DataPipelines[Data Pipelines ETL ELT]

DataPipelines --> Lakehouse[Databricks Delta Lake Lakehouse Layer]

Lakehouse --> Analytics[Analytics Reporting Layer]

K8S --> Observability[Monitoring Observability Stack]
Observability --> Prometheus[Prometheus]
Observability --> Grafana[Grafana]

CI[CI CD Pipelines] --> K8S
CI --> Infra[Terraform Infrastructure as Code]
Infra --> Cloud[AWS Azure Cloud]
---

## 📦 Featured Projects

### Cloud-Native Platform (Kubernetes + AWS + CI/CD)

A production-style cloud system built using Kubernetes and AWS infrastructure.

- Kubernetes cluster deployment on AWS (EKS)
- CI/CD pipelines for automated deployment
- Infrastructure provisioning using Terraform
- Monitoring using Prometheus and Grafana
- Debugging production-style failures (CrashLoopBackOff, OOMKilled)

---

### CI/CD Pipeline System (Jenkins + Docker + EKS)

- Jenkins-based CI/CD automation pipeline
- Docker image build and deployment workflow
- Kubernetes deployment on AWS EKS
- Infrastructure as Code using Terraform

---

### Backend API System (Rails 8)

A REST API system simulating production backend service design.

- Transaction processing API using Rails 8
- Structured JSON request/response handling
- Database persistence using ActiveRecord
- End-to-end request validation using Postman
- Stateless API architecture design

---

### Infrastructure as Code (AWS EC2)

- Provisioned AWS infrastructure using Terraform
- EC2 setup with secure networking and IAM configuration
- Fully reproducible cloud environment

---

## 🔧 Engineering Focus

- Building production-ready systems (not tutorials)
- End-to-end ownership (design → deploy → monitor)
- Cloud-native architecture and automation
- Backend + data pipeline engineering
- Reliability and observability-first design

---

## 📊 What This Demonstrates

- Backend system design
- Distributed systems thinking
- Cloud infrastructure engineering
- Data pipeline development
- CI/CD and automation workflows
- Production debugging and reliability engineering

---

## 📌 Contact

GitHub: github.com/jagan-SRE  
LinkedIn: linkedin.com/in/jaganpudari  
Location: St. Louis, MO  
