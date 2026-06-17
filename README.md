# 🏥 Healthcare Analytics Platform

### Transforming 55,000+ Healthcare Records into Actionable Insights

Healthcare organizations generate enormous amounts of patient, hospital, and billing data every day. However, raw data alone does not improve patient outcomes or operational efficiency.

This project analyzes over 55,000 healthcare records using SQL to evaluate hospital performance, patient utilization, revenue trends, readmission patterns, and data quality issues.

Through advanced SQL analysis, data validation, and healthcare KPI reporting, this project demonstrates how healthcare data can be transformed into meaningful business insights and executive recommendations.

## 🛠️ Tools & Technologies

- MySQL
- SQL
- Data Modeling
- Data Quality Validation
- Window Functions
- Healthcare Analytics
- Business Intelligence

## 🎯 The Challenge

Healthcare systems collect large volumes of operational and financial data, but identifying meaningful patterns requires structured analysis.

This project was designed to answer several key business questions:

- Which hospitals generate the highest revenue?
- Which medical conditions drive the greatest healthcare utilization?
- What is the average patient length of stay?
- Are patients being readmitted shortly after discharge?
- What data quality issues could impact reporting accuracy?

## 🗄️ Database Schema

The healthcare database was normalized into three core tables:

### Patients
- Patient ID
- Name
- Age
- Gender
- Blood Type

### Hospitals
- Hospital ID
- Hospital Name

### Admissions
- Admission ID
- Patient ID
- Hospital ID
- Medical Condition
- Admission Date
- Discharge Date
- Billing Amount
- Admission Type
- Medication
- Test Results

Relationships:

Patients (1) ---- (M) Admissions

Hospitals (1) ---- (M) Admissions

## 📊 Key Insights

### Top Medical Conditions by Admissions

![Top Medical Conditions](Top%20Medical%20Conditions.png)

**Insight:**
Arthritis and Diabetes represented the highest number of admissions, indicating significant demand for chronic disease management services.
