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

## 💰 Revenue Analysis

### Top Revenue Generating Hospitals

![Hospital Revenue Distribution](Hospital%20Revenue%20Distribution.png)

**Insight:**
Johnson PLC generated the highest revenue at approximately $1.11M, followed by Ltd Smith and LLC Smith.

The concentration of revenue among top-performing hospitals highlights opportunities for benchmarking best practices and improving operational efficiency across the network.

## 🏥 Length of Stay Analysis

### Average Length of Stay by Medical Condition

![Length of Stay Analysis](Length%20of%20Stay%20Analysis.png)

**Insight:**

Asthma patients experienced the longest average hospital stay at 15.71 days, followed closely by Arthritis and Cancer patients.

## 🔄 Readmission Analysis

### Potential 30-Day Readmissions

Using SQL Window Functions (LAG and DATEDIFF), patient admissions were analyzed to identify potential readmissions within 30 days of discharge.

**SQL Techniques Used:**

- Common Table Expressions (CTEs)
- LAG()
- DATEDIFF()
- Window Functions

**Insight:**

Several patients were readmitted within 30 days, suggesting opportunities to improve discharge planning, follow-up care, and chronic disease management.

## ✅ Data Quality Validation

Several validation checks were performed to ensure data reliability:

- Missing Medical Conditions
- Negative Billing Amounts
- Invalid Admission and Discharge Dates
- Duplicate Admission Records

### Findings

- No missing medical condition values detected
- Negative billing records identified and flagged
- Invalid date combinations detected
- Duplicate admission records identified

### 🎯 Executive Recommendations

### 1. Strengthen Chronic Disease Management
Arthritis and Diabetes generated the highest admission volumes, indicating a need for targeted prevention and monitoring programs.

### 2. Improve Readmission Prevention
Implement enhanced discharge planning and follow-up care programs for patients at risk of returning within 30 days.

### 3. Benchmark High-Performing Hospitals
Analyze operational practices from top revenue-generating hospitals and apply successful strategies across the network.

### 4. Improve Data Governance
Address duplicate records, negative billing amounts, and data-entry inconsistencies to improve reporting accuracy.

### 5. Optimize Resource Allocation
Allocate staffing and hospital resources based on conditions associated with longer average patient stays.

## 📌 Conclusion

This project demonstrates how SQL can be used to transform raw healthcare data into actionable business insights.

Through the analysis of 55,000+ patient records, key trends were identified across hospital revenue, patient admissions, average length of stay, readmission patterns, and data quality metrics.

The findings provide healthcare administrators with valuable information to improve operational efficiency, optimize resource allocation, enhance patient outcomes, and support data-driven decision-making.

This project showcases the complete analytics lifecycle—from data validation and exploratory analysis to business intelligence and executive recommendations.

## 👩‍💻 Author

**Mahitha Kalinathabotla**

Master's Student in Business Analytics | Data Analytics | Business Intelligence | SQL | Python | Power BI

- GitHub: https://github.com/mahithak104-cmd
- LinkedIn: [www.linkedin.com/in/mahitha-kalinathabotla]
