/* Clean and prepare data */

data sales_data_clean;
    set sales_data;
    format sale_date yymmdd10.;
    sale_date = input(put(sale_date, $10.), yymmdd10.);
    sales_amount = quantity * unit_price;
run;
