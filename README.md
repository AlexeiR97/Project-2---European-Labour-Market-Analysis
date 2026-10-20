# European Labour Market Analysis (NUTS 2)

##  About the Project
This project analyzes the European labor market using 2021 Eurostat census data. The study examines NUTS 2 regions, employment structure by worker category, and key macroeconomic indicators (employment rate, dependency ratio). 

The project covers the full data pipeline: **Python** for ETL, **MySQL** for storage, and **Power BI** for interactive visualization.

##  Technologies Used
- **Python (pandas, numpy)** — data cleaning and transformation.
- **MySQL (SQL)** — database creation and data storage.
- **Power BI** — data modeling, DAX, and interactive dashboard creation.

##  Project Structure
Project 2/
├── CSV_raw/ # Raw data from Eurostat (not included, see below)
├── CSV_clean/ # Cleaned data (output of Python scripts)
├── Python_cleaning/ # ETL script (data_cleaning.ipynb) and GeoJSON script
├── SQL/ # Employment.sql (creates DB and loads data)
├── PowerBI/ # Employment.pbix and geo_files/ for custom maps
└── docs/ # Full documentation (Project 2 Documentation.docx)

##  How to Reproduce
1. **Download the data:** The raw data is not included due to size (>100 MB). Download both datasets from Eurostat:
   - [Dataset 1: cens_21empo_r2](https://ec.europa.eu/eurostat/databrowser/view/cens_21empo_r2/default/table?lang=en&category=cens.cens_21.cens_21ec)
   - [Dataset 2: cens_21loc_r2](https://ec.europa.eu/eurostat/databrowser/view/cens_21loc_r2/default/table?lang=en&category=cens.cens_21.cens_21ec)
   
   Place them in the `CSV_raw/` folder.

2. **Run Python scripts:** Open `Python_cleaning/data_cleaning.ipynb` in Jupyter/VS Code and run all cells. This generates cleaned files in `CSV_clean/`.

3. **Run SQL:** Open `SQL/Employment.sql` in MySQL Workbench, update the file paths, and run it to create the database.

4. **Open Power BI:** Open `PowerBI/Employment.pbix`, refresh the data, and manually link the custom map files from `PowerBI/geo_files/` as described in the full documentation.

*For detailed instructions, see the full documentation in the `docs/` folder.*

##  Key Insights
- **Germany** has the highest share of employees (45.92%) and the lowest share of non-employed (49.38%).
- **Italy** shows a high share of self-employed workers: 6.82% own-account workers and 0.67% family workers, reflecting a traditional, small-business-oriented economy.
- **Spain** is similar to Italy but has a slightly lower self-employment rate and the highest share of non-employed population (60.59%).

##  License
This project is for educational purposes. Data provided by Eurostat.