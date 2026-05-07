Layoffs Data Cleaning Project

Project Overview

This project focuses on cleaning and preparing a layoffs dataset using SQL in MySQL. The main objective was to transform raw and inconsistent data into a structured, reliable, and analysis-ready dataset.
The cleaning process was performed on staging tables to ensure that the original dataset remained unchanged throughout the project.

Objectives
The project aimed to:
Remove duplicate records
Standardize inconsistent values
Handle null and blank values
Convert incorrect data formats
Remove unnecessary columns
Improve overall data quality for analysis

Data Cleaning Process
1. Creating Staging Tables
To avoid modifying the original dataset directly, duplicate staging tables were created. All cleaning operations were performed on these temporary tables to maintain data safety and integrity.

2. Removing Duplicate Records
Duplicate rows were identified using window functions and partitioning techniques. Records containing identical values across important columns were detected and removed to ensure uniqueness within the dataset.

3. Standardizing the Data
Several inconsistencies were found in the dataset and corrected during this stage.
Company Names
Extra spaces and formatting inconsistencies in company names were cleaned.
Industry Names
Different variations of the same industry category were standardized into a single consistent format.
Country Names
Country names containing punctuation inconsistencies were corrected.
Date Formatting
Date values stored as text were converted into proper SQL date format to improve querying and analysis capabilities.

4. Handling Null and Blank Values
Identifying Missing Data
Rows containing missing or incomplete information were identified for further processing.
Replacing Blank Values
Blank fields were converted into null values to maintain consistency across the dataset.
Filling Missing Industry Information
Missing industry values were populated using matching company records whenever possible.
Removing Irrelevant Rows
Rows lacking meaningful layoff information were removed from the dataset to improve data quality.

5. Removing Unnecessary Columns
Temporary columns created during the cleaning process were removed after their purpose was completed, leaving the final dataset clean and optimized.

Final Outcome
After completing the cleaning process, the dataset became:


More accurate
Consistent and standardized
Free from duplicate records
Easier to analyze
Better suited for data analysis and visualization projects

Skills Demonstrated
SQL Data Cleaning
Data Standardization
Handling Missing Values
Duplicate Removal

Tools Used
MySQL

Conclusion
This project demonstrates practical data cleaning techniques commonly used in real-world data analysis workflows. By cleaning and standardizing the layoffs dataset, the data became more reliable and suitable for further exploratory analysis and business insights generation.
