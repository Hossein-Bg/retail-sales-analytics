/* Import CSV files into SAS datasets */

proc import datafile="data/sales_data.csv" out=sales_data dbms=csv replace;
    guessingrows=MAX;
run;

proc import datafile="data/products.csv" out=products dbms=csv replace;
    guessingrows=MAX;
run;

proc import datafile="data/stores.csv" out=stores dbms=csv replace;
    guessingrows=MAX;
run;
