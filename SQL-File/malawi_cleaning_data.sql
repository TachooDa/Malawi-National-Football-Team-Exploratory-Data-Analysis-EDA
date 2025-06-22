create database malawi_team;
-- buat staging (tidak menggunakan raw data)
select * from malawi_staging;
-- Staging dataset_malawi_football_team
create table malawi_staging
like dataset_malawi_football_team;
-- Masukan data ke malawi_staging
insert malawi_staging
select * from dataset_malawi_football_team;

-- 1. Remove Duplicate Data
select *,
row_number () over(partition by `Date`,Opponent,`Team Score`,`Opponent Score`,Result,Venue,Competition) as row_num
from malawi_staging;
-- cek dari CTE
with duplicate_cte as (
select *,
row_number () over(partition by `Date`,Opponent,`Team Score`,`Opponent Score`,Result,Venue,Competition) as row_num
from malawi_staging
)
select * from duplicate_cte;

-- Kesimpulan -- no duplicate data

CREATE TABLE `malawi_staging2` (
  `Date` text,
  `Opponent` text,
  `Team Score` int DEFAULT NULL,
  `Opponent Score` int DEFAULT NULL,
  `Result` text,
  `Venue` text,
  `Competition` text,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
select * from malawi_staging2;
-- delete row duplicate
delete  from malawi_staging2
where row_num > 1;
-- masukan data ke malawi_stag2
insert into malawi_staging2
select *,
row_number () over(partition by `Date`,Opponent,`Team Score`,`Opponent Score`,Result,Venue,Competition) as row_num
from malawi_staging;

-- 2. Standardize Data
select `Date` from malawi_staging2;
-- update (hilangkan ~)
update malawi_staging2
set `Date` = replace(`Date`,'~','')
where `Date` like '~%';
-- normalisasi tanggal
update malawi_staging2
set `Date` = concat(`Date`, '-01-01')
where `Date` regexp '^[0-9]{4}$';
-- format semua tanggal
update malawi_staging2
set `Date` = date_format(str_to_date(`Date`, '%d/%m/%Y'), '%Y-%m-%d')
where `Date` regexp '^[0-9]{2}/[0-9]{2}/[0-9]{4}$';
-- ubah tipe data kolom Date dari text -> date
alter table malawi_staging2
modify column `Date` date;

-- 3. null dan blank values (no null and blank values)
select * from malawi_staging2
order by `Date` asc;

-- 4. remove any row yg sudah tidak di gunakan
select * from malawi_staging2;
alter table malawi_staging2
drop column row_num;



