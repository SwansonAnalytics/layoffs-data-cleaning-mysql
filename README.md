# Global Layoffs Data Cleaning and Exploratory Analysis with MySQL

## Project Overview

This project demonstrates the process of cleaning, preparing, and analyzing a global layoffs dataset using MySQL. The original dataset contained duplicate records, inconsistent text values, blank and NULL values, and dates stored in an incorrect format.

After cleaning the data, I performed exploratory data analysis to identify trends and patterns across companies, countries, years, and funding stages.

## Data Cleaning Process

* Created staging tables to preserve the original raw data
* Identified duplicate records using `ROW_NUMBER()`
* Removed duplicate records
* Trimmed unnecessary spaces from company names
* Standardized inconsistent industry and country values
* Converted blank industry values to NULL
* Populated missing industry information using matching company records
* Converted the date column into the MySQL `DATE` format
* Removed records with no usable layoff information
* Removed the temporary row-number column

## Exploratory Data Analysis

After cleaning the dataset, I used SQL to explore global layoff patterns and trends. The analysis included:

* Identifying the largest single layoff totals and percentages
* Examining companies that laid off their entire workforce
* Calculating total layoffs by company
* Determining the date range covered by the dataset
* Comparing total layoffs by country
* Analyzing layoffs by year
* Comparing layoffs across company funding stages
* Calculating monthly layoff totals
* Creating a rolling total to show how layoffs accumulated over time
* Ranking the five companies with the highest layoffs for each year

## Tools and Skills

* MySQL
* Data cleaning
* Exploratory data analysis
* Staging tables
* Aggregate functions
* Common table expressions
* Window functions
* Joins
* NULL-value handling
* Date functions and data-type conversion
* Rolling totals
* Ranking with `DENSE_RANK()`

## Files

* `layoffs.csv` — original raw dataset
* `01-layoffs-data-cleaning.sql` — SQL queries used to clean and prepare the dataset
* `02-layoffs-exploratory-analysis.sql` — SQL queries used to analyze patterns and trends in the cleaned dataset

## Dataset Source

The global layoffs dataset was originally obtained from Kaggle and used as part of a guided SQL project.

## Project Purpose

The purpose of this project was to practice transforming raw data into an analysis-ready dataset and using SQL to identify trends, comparisons, and patterns in global layoffs.


