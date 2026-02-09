# Cloud Event-Driven Data Processing Pipeline

This project demonstrates an event-driven data processing pipeline that captures incoming JSON data, processes it using serverless functions, and generates automated daily summary reports.

The focus of this project is on cloud architecture design, automation, and Infrastructure as Code rather than live production deployment.

---

## Architecture Overview

The system follows an event-driven architecture:

- Incoming JSON data triggers a processing function automatically.
- Processed data is stored for later analysis.
- A timer-based trigger runs once per day to generate a summary report.
- The entire setup is automated using Infrastructure as Code and CI/CD.

---

## Components

### Infrastructure as Code
- **Bicep** is used to define cloud infrastructure such as storage and serverless function resources.
- This enables automated and repeatable infrastructure creation.

### Serverless Functions
- `process_data.py`  
  Handles incoming JSON data, performs basic processing, and logs the processed output.

- `generate_report.py`  
  Runs on a daily schedule and generates a summary report based on processed data.

### CI/CD Pipeline
- A GitHub Actions workflow is included to demonstrate Continuous Integration and Deployment.
- The pipeline automatically runs on code changes and simulates build and deployment steps.

---

## Automation Flow

1. JSON data is received by the system.
2. An event triggers the data processing function.
3. Processed data is stored.
4. A daily timer triggers the report generation function.
5. A summary report is generated automatically.

---

## Notes

- This repository focuses on demonstrating event-driven architecture, automation, and cloud design patterns.
- Live cloud deployment and credentials are intentionally excluded.
- The implementation is suitable for learning, demonstration, and academic evaluation purposes.

---

## Technologies Used

- Python
- Azure serverless concepts
- Infrastructure as Code (Bicep)
- GitHub Actions (CI/CD)


