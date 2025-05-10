
# 🛒 Retail Sales Analytics with SAS

This project uses **Base SAS** (compatible with SAS EG) to analyze retail sales data, generate summary reports using **PROC SQL**, and automate repetitive tasks with **SAS Macros**. It's designed for practicing data import, transformation, SQL aggregation, and dynamic reporting in SAS.

---

## 📂 Project Structure

```
retail-sales-analytics/
├── data/
│   ├── sales_data.csv         # Raw sales transactions
│   ├── products.csv           # Product reference data
│   └── stores.csv             # Store location data
│
├── code/
│   ├── 01_import_data.sas     # Imports raw CSVs into SAS datasets
│   ├── 02_clean_transform.sas # Cleans and prepares data for analysis
│   ├── 03_summary_sql.sas     # Generates SQL-based summary tables
│   ├── 04_macro_report.sas    # SAS macros for monthly sales reports
│   └── 05_run_all.sas         # Orchestrates the entire workflow
│
└── README.md
```

---

## 📊 Datasets

- `sales_data.csv`: Includes transaction-level sales data with product, quantity, unit price, and sale date.
- `products.csv`: Contains product names and categories.
- `stores.csv`: Contains store names and regional info.

---

## ⚙️ Features

- 📥 CSV import with `PROC IMPORT`
- 🧼 Data cleaning using `DATA` steps
- 📈 SQL joins, groupings, and aggregations using `PROC SQL`
- 🔁 Reusable macros to automate report generation
- 📄 PDF output using `ODS PDF`

---

## 🚀 How to Run

1. Open **Base SAS** or **SAS Enterprise Guide**
2. Run the scripts in the following order:
   1. `01_import_data.sas`
   2. `02_clean_transform.sas`
   3. `03_summary_sql.sas`
   4. `04_macro_report.sas`
   5. `05_run_all.sas` (optional: runs all steps)

3. Review output PDF reports in the `/output/` folder.

---

## 📌 Example Macro

```sas
%summary_report(month=2, year=2024);
```

This generates a PDF report for February 2024.

---

## 🧠 Skills Practiced

- Base SAS scripting
- PROC SQL aggregations
- SAS Macro programming
- Reporting and automation

---

## 👨‍💻 Author

Created by Hossein-Bg. Contributions welcome!

