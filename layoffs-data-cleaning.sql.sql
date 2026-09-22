-- Data cleaning 

Select *
From layoffs;


-- 1. Remove Duplicates 
-- 2. Standardize the Data 
-- 3. Null Values or Blank values 
-- 4. Remove Columns 



Create table layoffs_staging
Like Layoffs;


Select *
From layoffs_staging;

Insert layoffs_staging
Select *
From layoffs;


Select *,
Row_number() Over(
partition by company, industry, total_laid_off, percentage_laid_off,'date' ) 
From layoffs_staging;

with duplicate_cte as 
(
Select *,
Row_number() Over(
partition by company,location, industry, total_laid_off, percentage_laid_off,'date', stage, country, funds_raised_millions) as row_num
From layoffs_staging
)
Select *
From duplicate_cte
where row_num> 1;


Select *
From layoffs_staging
where company = 'Oda';


with duplicate_cte as 
(
Select *,
Row_number() Over(
partition by company, location,
 industry, total_laid_off, percentage_laid_off,'date', stage,
 country, funds_raised_millions) as row_num
From layoffs_staging
)
delete 
From duplicate_cte
where row_num> 1;



CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  Row_num int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


Select *
From layoffs_staging2;

Insert into layoffs_staging2
Select *,
Row_number() Over(
partition by company, location,
 industry, total_laid_off, percentage_laid_off,'date', stage,
 country, funds_raised_millions) as row_num
From layoffs_staging;

delete
From layoffs_staging2
where row_num> 1;

Select *
From layoffs_staging2;


-- standardizing data

Select company, trim(company)
from layoffs_staging2;

Update layoffs_staging2
Set company = trim(company);


select distinct industry
from layoffs_staging2;



update layoffs_staging2
Set industry = 'Crypto'
where industry like 'Crypto';


Select distinct country, trim(trailing '.' from country)
from layoffs_staging2
order by 1;

update layoffs_staging2
set country = trim(trailing '.' from country)
where country like 'United States%';


Select `date`
from layoffs_staging2;

Update layoffs_staging2
set `date` = str_to_date(`date`, '%m/%d/%Y');

Alter table layoffs_staging2
modify column `date` date;

Select *
from layoffs_staging2
where total_laid_off IS NULL
and percentage_laid_off is NULL;


update layoffs_staging2
set industry = null 
where industry = '';

Select *
from layoffs_staging2
where industry is null 
Or industry = '';


Select *
from layoffs_staging2
where company like 'Bally%';


Select t1.industry, t2.industry
from layoffs_staging2 t1 
join layoffs_staging2 t2
	on t1.company = t2.company
where (t1.industry is null or t1.industry = '')
and t2.industry is not null;

Update layoffs_staging2 t1 
join layoffs_staging2 t2
	on t1.company = t2.company
Set t1.industry = t2.industry
where t1.industry is null 
and t2.industry is not null;

Select *
from layoffs_staging2;


Select *
from layoffs_staging2
where total_laid_off IS NULL
and percentage_laid_off is NULL;


Delete 
from layoffs_staging2
where total_laid_off IS NULL
and percentage_laid_off is NULL;


Select *
from layoffs_staging2;


Alter table layoffs_staging2
Drop column Row_num;





