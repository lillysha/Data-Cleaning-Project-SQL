# Data Cleaning

select *
from layoffs;

 -- step 1 REMOVE DUPLICATES
 -- step 2 Standardize the data
 -- step 3  Null values or Blank values
 -- step 4  Remove any columns
 
create table layoffs_staging
like layoffs;

-- we've created a duplicate as layoffs . 

select *
from layoffs_staging;

insert layoffs_staging
select *
from layoffs;  

-- we've another table becoz we've to do a lot of changes if we done a any mistakes it won't 
-- affect in the original table. it'll be same as it is .


select *,
row_number() over(
partition by company,industry,total_laid_off, percentage_laid_off, `date`) as row_num
from layoffs_staging;

with duplicate_cte as 
(
select *,
row_number() over(
partition by company,location,industry,total_laid_off,
 percentage_laid_off, `date`,stage, country,funds_raised_millions) as row_num
from layoffs_staging
)
select *
from duplicate_cte
where row_num > 1;

select *
from layoffs_staging
where company = 'Oda';

select *
from layoffs_staging
where company = 'Casper';

-- delete doesn't work in mysql becoz delete work as a update

CREATE TABLE `layoffs_staging2` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` bigint DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

select *
from layoffs_staging2;

insert into layoffs_staging2
select *,
row_number() over(
partition by company, location, industry, total_laid_off,
percentage_laid_off, `date`, stage, country, funds_raised_millions) as row_num
from layoffs_staging;

select *
from layoffs_staging2
where row_num >1;

delete
from layoffs_staging2
where row_num >1;

select *
from layoffs_staging2
where row_num >1;

select *
from layoffs_staging2;

--  STEP : 2 Standardizing data
-- it is used for finding the issues and correcting the data.

select company,   trim(company)
from layoffs_staging2;
 
update layoffs_staging2
set company = trim(company);

select  distinct industry
from layoffs_staging2
order by 1;

select *
from layoffs_staging2
where industry like 'Crypto%';

update layoffs_staging2
set industry = 'Crypto'
where industry like 'Crypto%';

select distinct industry
from layoffs_staging2;

select *
from layoffs_staging2;

select distinct location
from layoffs_staging2
order by 1;

select distinct country
from layoffs_staging2
order by 1;

select *
from layoffs_staging2
where country like 'United States%'
order by 1;

select distinct country, trim(trailing '.' from country)
from layoffs_staging2
order by 1;

update layoffs_staging2
set country = trim(trailing '.' from country)
where country like 'United States%';

select `date`,
str_to_date(`date` , '%m/%d/%Y')
from layoffs_staging2;

update layoffs_staging2
set date = str_to_date(`date` , '%m/%d/%Y');

select date
from layoffs_staging2;

alter table layoffs_staging2
modify column `date` DATE;

select *
from layoffs_staging2;

-- STEP : 3 Null values or blank values

select *
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;
 
select *
from layoffs_staging2
where industry is null
or industry = '';

select *
from layoffs_staging2
where company = 'Airbnb';

select t1.industry, t2.industry
from layoffs_staging2 t1
join layoffs_staging2  t2
	on t1.company = t2.company
where (t1.industry is null or t1.industry = '')
and t2.industry is not null;

update layoffs_staging2 t1
join layoffs_staging2 t2
	on t1.company = t2.company
set t1.industry = t2.industry
where t1.industry is null 
and t2.industry is not null;

update layoffs_staging2
set industry = null
where industry = '';

select *
from layoffs_staging2;


select *
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;

delete 
from layoffs_staging2
where total_laid_off is null
and percentage_laid_off is null;


select *
from layoffs_staging2;

alter table layoffs_staging2
drop column row_num;


