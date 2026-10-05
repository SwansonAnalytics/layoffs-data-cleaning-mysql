-- Exploritory Data Analysis 

Select *
from layoffs_staging2;


Select max(total_laid_off), Max(percentage_laid_off)
from layoffs_staging2;

Select *
from layoffs_staging2
where percentage_laid_off = 1
order by funds_raised_millions Desc;

Select company, sum(total_laid_off)
From layoffs_staging2
Group by company 
order by 2 desc;

select min(`date`), Max(`date`)
From layoffs_staging2;


Select country, sum(total_laid_off)
From layoffs_staging2
Group by country
order by 2 desc;

Select *
from layoffs_staging2;

Select year(`date`), sum(total_laid_off)
From layoffs_staging2
Group by year(`date`)
order by 1 desc;


Select stage, sum(total_laid_off)
From layoffs_staging2
Group by stage
order by 2 desc;


select substring(`date`,1,7) as `Month`, sum(total_laid_off)
from layoffs_staging2
where substring(`date`,1,7) is not null
group by `Month`
order by 1 asc;


with Rolling_Total as 
(
select substring(`date`,1,7) as `Month`, sum(total_laid_off) as total_off
from layoffs_staging2
where substring(`date`,1,7) is not null
group by `Month`
order by 1 asc
)
select `Month`, total_off
, sum(total_off) over(order by `Month`) as Rolling_Total
from Rolling_total;

Select company, sum(total_laid_off)
From layoffs_staging2
Group by company 
order by 2 desc;


Select company, year(`date`), sum(total_laid_off)
From layoffs_staging2
Group by company, year(`date`) 
order by 3 desc;


with Company_year (company, years, total_laid_off) as
(
Select company, year(`date`), sum(total_laid_off)
From layoffs_staging2
Group by company, year(`date`) 
), company_year_rank as 
(select *,
dense_rank() OVER (partition by years order by total_laid_off desc) as Ranking
from Company_year
where years is not null
)
select *
from company_year_rank
where Ranking <= 5
;














