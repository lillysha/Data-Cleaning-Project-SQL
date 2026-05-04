Data Cleaning Project: 

This project focuses on cleaning and preparing a global layoffs dataset using SQL. The dataset contained duplicate records, inconsistent formatting, missing values, and unnecessary data that needed to be standardized before analysis.
The entire cleaning process was performed using MySQL while preserving the original raw dataset for backup and recovery purposes.

Project Objective
The main objective of this project was to transform raw layoffs data into a clean and analysis-ready dataset. The cleaning process improves data quality, consistency, and reliability for future exploratory data analysis (EDA), reporting, and visualization.

STEP 1 : Data Cleaning Process
1. Creating a Staging Table
A staging table was created to ensure the original dataset remained untouched during the cleaning process. This is a common industry practice that helps maintain data integrity and provides a backup in case errors occur during transformations.

STEP : 2 Removing Duplicate Records
Duplicate rows were identified using window functions and row numbering techniques. Records containing identical values across important columns were treated as duplicates.
A temporary helper column was used to assign row numbers to duplicate groups, allowing duplicate entries to be safely removed while retaining the original record.

STEP : 3 Standardizing Data
Several inconsistencies were found within the dataset and standardized to improve uniformity.
Industry Standardization
Different naming variations for the same industry were unified into a single consistent format. Blank values were converted into null values for easier handling.
Country Standardization
Formatting inconsistencies in country names were corrected by removing unnecessary punctuation and spacing.
Date Formatting
Date values originally stored as text were converted into proper date format to support accurate filtering, sorting, and time-series analysis.

STEP : 4 Handling Missing Values
Missing and null values were carefully reviewed before making changes.
Some null values were preserved intentionally because they may still provide analytical value during later analysis stages. Missing industry values were filled where matching company information was available.

STEP : 5 Removing Unnecessary Data
Rows containing insufficient information for analysis were removed. Temporary helper columns used during the cleaning process were also deleted after completion to keep the dataset clean and optimized.

Final Result :

The final cleaned dataset is:

More consistent

Free from duplicate records

Properly formatted

Easier to analyze

Ready for exploratory data analysis and visualization

Skills and Concepts Used
This project demonstrates practical SQL data cleaning techniques, including:

Data staging

Duplicate detection

Data standardization

Null value handling

Data transformation

Table modification

Data quality improvement


Tools Used
MySQL






Conclusion
This project highlights the importance of data cleaning as a critical step in the data analysis workflow. Clean and standardized data ensures more accurate insights, better reporting, and reliable decision-making.
The cleaned layoffs dataset is now prepared for further analysis, trend identification, and business intelligence reporting.
