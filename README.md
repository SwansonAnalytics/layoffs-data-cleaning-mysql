# Global Layoffs Data Cleaning and Analysis with MySQL

## Project Overview

This project uses MySQL to clean a global layoffs dataset and explore reported layoffs across companies, countries, funding stages, and time periods. I prepared the raw data for analysis, then used aggregate queries, CTEs, and window functions to examine trends and rank companies by reported layoffs.

## Cleaning Steps

1. Created staging tables to preserve the raw data.
2. Identified and removed duplicate rows.
3. Trimmed spaces from company names and standardized industry and country values.
4. Converted blank industry values to NULL and filled some missing industries using matching company records.
5. Converted the date column to the MySQL DATE type.
6. Removed rows where both the layoff total and percentage were missing.
7. Removed the temporary row-number column.

## Exploratory Analysis

- Checked the dataset's date range and largest reported layoff totals and percentages.
- Examined companies reporting layoffs of 100% of their workforce.
- Compared total reported layoffs by company, country, and funding stage.
- Summarized layoffs by year and month.
- Calculated cumulative reported layoffs over time.
- Ranked companies by annual layoff totals using DENSE_RANK and selected the top five ranks for each year.

## SQL Skills Demonstrated

- Staging tables and data cleaning
- Joins and NULL handling
- Date conversion and text functions
- GROUP BY and aggregate functions
- Common table expressions (CTEs)
- Window functions: ROW_NUMBER, SUM OVER, and DENSE_RANK

## Files

- `layoffs.csv` — raw dataset
- `01-layoffs-data-cleaning.sql` — cleaning queries
- `02-layoffs-exploratory-analysis.sql` — exploratory analysis queries

## How to Use

1. Import `layoffs.csv` into MySQL as a table named `layoffs`.
2. Run the cleaning script to prepare the `layoffs_staging2` table.
3. Run the exploratory analysis script against the cleaned table.

## Dataset Source

[Global layoffs dataset on Kaggle](https://www.kaggle.com/datasets/swaptr/layoffs-2022)

## Acknowledgment

This project was completed while following Alex The Analyst's SQL tutorials.

## Limitations

The analysis reflects reported layoffs in this dataset. Missing values and incomplete coverage may affect comparisons. These queries describe patterns; they do not establish the causes of layoffs.
