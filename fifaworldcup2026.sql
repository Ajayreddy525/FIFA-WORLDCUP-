--Q1:Show all player records.
select * from fifa2026worldcup;
--Q2:How many total records are available in the FIFA 2026 World Cup dataset?
SELECT COUNT(*) as total_data
FROM fifa2026worldcup;
--Q3: Are there any records with missing player names in the dataset?
select * from fifa2026worldcup
where player_name is null;
--Q4: Are there any duplicate player-match records in the dataset?
SELECT player_id,
       match_id,
       COUNT(*) as duplicates
FROM fifa2026worldcup
GROUP BY player_id, match_id
HAVING COUNT(*) > 1;

--Q5: Who are the leading goal scorers in the tournament?
SELECT player_name,
       SUM(goals) AS total_goals
FROM fifa2026worldcup
GROUP BY player_name
ORDER BY total_goals DESC;

--Q6: Which players provided the most assists during the tournament?
SELECT player_name,
       SUM(assists) AS total_assists
FROM fifa2026worldcup
GROUP BY player_name
ORDER BY total_assists DESC;

--Q7: Which players achieved the highest average ratings?
SELECT player_name,
       ROUND(AVG(player_rating),2) AS avg_rating
FROM fifa2026worldcup
GROUP BY player_name
ORDER BY avg_rating DESC;

--Q8: How many total goals were scored in the tournament?
SELECT SUM(goals) as Total_Goals
FROM fifa2026worldcup;
--Q9: What is the average number of goals scored per player-match record?
SELECT AVG(goals) AS Avg_Goals
FROM fifa2026worldcup;
--Q10: How many total assists were recorded in the tournament?
SELECT SUM(assists) as Total_Assists
FROM fifa2026worldcup;

--Q11: What was the overall average player rating in the tournament?
SELECT ROUND(AVG(player_rating),2) as AVG_Rating
FROM fifa2026worldcup;
--Q12: How many unique players participated in the tournament?
SELECT COUNT(DISTINCT player_id) as Total_Players
FROM fifa2026worldcup;





--Q13: Show player name, team, goals, and assists.
select player_name, team, goals, assists
from fifa2026worldcup;

--Q14:  Show players who scored more than 2 goals.
select player_name , goals
from fifa2026worldcup
where goals >2;
--Q15:  Show players from Argentina.
select player_name from fifa2026worldcup
where team = 'Argentina';

--Q16:  Show players ordered by rating.
select player_name,player_rating
from fifa2026worldcup
order by player_rating desc;

--Q17:  Find total goals scored.
select sum(goals) as total_goals from fifa2026worldcup;
--Q18:  Find average player rating.
select avg(player_rating) as avg_rating
from fifa2026worldcup;
--Q19:  Find highest rating.
select max(player_rating)as Highest_Rating from fifa2026worldcup;
--Q20: Count total players.
select  count(*) as Total_Players
from fifa2026worldcup;
--Q21:  Goals scored by each team.
select team, sum(goals) as Total_Goals
from fifa2026worldcup
group by team;
--Q22:  Average rating by team.
select team, avg(player_rating) as avg_rating
from fifa2026worldcup
group by team;
--Q23:  Total assists by team.
select team, sum(assists) as total_assists
from fifa2026worldcup
group by team;

--Q24:  Teams with more than 5 goals.
select team, sum(goals) as total_goals
from fifa2026worldcup
group by team
having sum(goals) >5;


--Q25:  Teams with average rating above 8.
select team, AVG(player_rating) as avg_rating
from fifa2026worldcup
group by team
having avg(player_rating) >8;
--Q26:  Top 10 players by goals.
select TOP 10 player_name,goals
from fifa2026worldcup
order by goals desc;
--Q27: Player with highest rating.
select top 1 player_name , player_rating
from fifa2026worldcup
order by player_rating desc;
--Q28:  Top assister.
select top 1  player_name, assists
from fifa2026worldcup
order by assists;
--Q29:  Players with pass accuracy above 90%.
select player_name, pass_accuracy
from fifa2026worldcup
where pass_accuracy > 90;

--Q30:  Find the second-highest rating.
select max(player_rating) as second_highest_rating
from fifa2026worldcup
where player_rating < ( select max(player_rating) 
from fifa2026worldcup
);

--Q31: Find the team with the highest total goals.

select top 1 team, sum(goals) as total_goals
from fifa2026worldcup
group by team
order by total_goals desc;


