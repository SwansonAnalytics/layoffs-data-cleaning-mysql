# Global Layoffs Data Cleaning with MySQL

## Project Overview

This project uses MySQL to clean a global layoffs dataset and prepare it for analysis. The raw data includes duplicate rows, inconsistent text, blank values, and dates stored as text.

## Cleaning Steps

1. Created staging tables to preserve the raw data.
2. Identified and removed duplicate rows.
3. Trimmed spaces from company names and standardized industry and country values.
4. Converted blank industry values to NULL and filled some missing industries using matching company records.
5. Converted the date column to the MySQL DATE type.
6. Removed rows with no reported layoff total or percentage.
7. Removed the temporary row-number column.

## Files

- `layoffs.csv` — raw dataset
- `01-layoffs-data-cleaning.sql` — cleaning queries

## Dataset Source

[Global layoffs dataset on Kaggle](https://www.kaggle.com/datasets/swaptr/layoffs-2022)
