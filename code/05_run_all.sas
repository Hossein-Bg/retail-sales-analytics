/* Run full pipeline */

%include "code/01_import_data.sas";
%include "code/02_clean_transform.sas";
%include "code/03_summary_sql.sas";
%include "code/04_macro_report.sas";

/* Example: Generate February 2024 report */
%summary_report(month=2, year=2024);
