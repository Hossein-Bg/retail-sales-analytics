/* Join tables and generate summary with PROC SQL */

proc sql;
    create table sales_summary as
    select 
        s.sale_date,
        st.region,
        pr.category,
        sum(s.sales_amount) as total_sales,
        sum(s.quantity) as total_units
    from sales_data_clean s
    left join products pr on s.product_id = pr.product_id
    left join stores st on s.store_id = st.store_id
    group by s.sale_date, st.region, pr.category;
quit;
