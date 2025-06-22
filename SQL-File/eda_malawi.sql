select * from malawi_staging2;
-- 1. tren kemenangan waktu->waktu
select YEAR(`Date`) as year, `Result`, count(*) as total 
from malawi_staging2
group by YEAR(`Date`), `Result`
order by year asc;
-- 2. Performa berdasarkan lawan 
select `Opponent`, `Result`,count(*) as total
from malawi_staging2
group by `Opponent`, `Result`
order by `Opponent`;
-- 3. Skor rata-rata berdasarkan venue
select `Venue`,
round(avg(`Team Score`),0) as avg_teamscore,
round(avg(`Opponent Score`),0) as avg_oppscore
from malawi_staging2
group by `Venue`;
-- 4. value per kompetisi
select `Competition` , `Result`, count(*) as total
from malawi_staging2
group by `Competition`, `Result`
order by `Competition` asc;
-- 5. Selisih skor vs lawan
select * from malawi_staging2;
select `Opponent`, `Team Score`, `Opponent Score`,
(`Team Score` - `Opponent Score`) as selisih
from malawi_staging2
order by selisih desc;
-- 6. Konsistensi skor dari tahun -> tahun
select year(`Date`) as year,
round(avg(`Team Score`),0) as gol_rata2_team,
round(avg(`Opponent Score`),0) as gol_rata2_lawan
from malawi_staging2
group by year(`Date`)
order by year;
-- 7. frekuensi pertandingan berdasarkan venue
select `Venue`, count(*) as total_pertandingan
from malawi_staging2
group by `Venue`
order by total_pertandingan desc;
-- 8. pertandingan berdasarkan dekade
select concat(floor(year(`Date`)/10)*10) as dekade
from malawi_staging2
group by dekade
order by dekade;
-- 9. Distribusi jenis kompetisi
select `Competition`, count(*) as total_main
from malawi_staging2
group by `Competition`
order by total_main desc;
-- 10. Lawan terkuat & terlemah berdasarkan skor
select `Opponent`, 
sum(`Team Score`) as tot_team_score,
sum(`Opponent Score`) as tot_opp_score,
sum(`Team Score` - `Opponent Score`) as tot_selisih
from malawi_staging2
group by `Opponent`
order by tot_selisih asc;
-- 11. Top 5 Lawan yang sering dihadapi 
select `Opponent`,count(*) as jumlah_pertandingan
from malawi_staging2
group by `Opponent`
order by jumlah_pertandingan desc
limit 5;

-- CTE EDA Section
-- 1.  match terbaru per lawan
with latest_match as (
	select *,
    row_number() over(partition by `Opponent` order by `Date` desc) as latest_match
    from malawi_staging2
)
select * from latest_match
where latest_match = 1;

-- 2. performa pertahun, dan persentase menang
with yearly_result as (
	select year(`Date`) as year,
    count(*) as total_match,
    sum(case when `Result` = 'Win' then 1 else 0 end) as total_win
    from malawi_staging2
    group by year(`Date`)
)
select *,
round(total_win * 100.0 / total_match, 2) as win_percentage
from yearly_result
order by year;

-- 3. rata-rata skor per venue
with avg_score_venue as (
	select `Venue`,
    round(avg(`Team Score`),0) as avg_team_score,
    round(avg(`Opponent Score`),0) as avg_opp_score
    from malawi_staging2
    group by `Venue`
)
select * from avg_score_venue
where Venue in ('Home', 'Away','Unknown');

-- 4. selisih skor tiap lawan, ranking dari yg tersulit
with selisih_lawan as (
select `Opponent`,
sum(`Team Score`- `Opponent Score`) as total_selisih
from malawi_staging2
group by `Opponent`
)
select *,
rank() over(order by total_selisih asc) as lawan_tersulit
from selisih_lawan;

-- 5. summary / decade
WITH decade_summary AS (
  SELECT 
    CONCAT(FLOOR(YEAR(`Date`)/10)*10, 's') AS Dekade,
    COUNT(*) AS Total_Matches
  FROM malawi_staging2
  GROUP BY CONCAT(FLOOR(YEAR(`Date`)/10)*10, 's')
)
SELECT *
FROM decade_summary
ORDER BY Dekade;
