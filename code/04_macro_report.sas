/* Create macro to generate monthly summary report */

%macro summary_report(month=, year=);
    data monthly_data;
        set sales_data_clean;
        if month(sale_date) = &month and year(sale_date) = &year;
    run;

    proc sql;
        create table monthly_summary as
        select 
            st.store_name,
            pr.product_name,
            sum(s.sales_amount) as total_sales,
            sum(s.quantity) as total_units
        from monthly_data s
        left join products pr on s.product_id = pr.product_id
        left join stores st on s.store_id = st.store_id
        group by st.store_name, pr.product_name;
    quit;

    ods pdf file="output/sales_summary_&year.&month..pdf";
    title "Sales Summary for &month/&year";
    proc print data=monthly_summary noobs;
    run;
    ods pdf close;
%mend;
