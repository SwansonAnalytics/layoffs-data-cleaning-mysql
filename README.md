# Global Layoffs Data Cleaning with MySQL

## Project Overview

This project demonstrates the process of cleaning and preparing a global layoffs dataset for analysis using MySQL. The original dataset contained duplicate records, inconsistent text values, blank and NULL values, and dates stored in an incorrect format.

## Cleaning Process

* Created staging tables to preserve the original raw data
* Identified duplicate records using `ROW_NUMBER()`
* Removed duplicate records
* Trimmed unnecessary spaces from company names
* Standardized inconsistent industry and country values
* Converted blank industry values to NULL
* Populated missing industry information when matching company data was available
* Converted the date column into the MySQL `DATE` format
* Removed records with no usable layoff information
* Removed the temporary row-number column

## Tools and Skills

* MySQL
* Data cleaning
* Staging tables
* Common table expressions
* Window functions
* Joins
* NULL-value handling
* Data-type conversion

## Files

* `layoffs.csv` — original raw dataset
* `layoffs-data-cleaning.sql` — SQL queries used to clean the dataset

## Dataset Source

Global layoffs dataset originally obtained from Kaggle and used as part of a guided data-cleaning project.

## Project Purpose

The purpose of this project was to practice transforming raw data into an organized and analysis-ready dataset while developing practical MySQL data-cleaning skills.

