--Get the top 10 players with the highest potential:
SELECT player_id,long_name FROM Player_Info ORDER BY potential DESC LIMIT 10;

--Get the average overall rating and the maximum wage for each unique player position, considering only the players with the highest wage in each position.
SELECT PI.player_positions, ROUND(AVG(PI.overall), 2) AS avg_overall, MAX(PI.wage_eur) AS max_wage
FROM Player_Info PI
JOIN (SELECT player_positions, MAX(wage_eur) AS max_wage
      FROM Player_Info
      GROUP BY player_positions) AS subquery
ON PI.player_positions = subquery.player_positions
GROUP BY PI.player_positions
LIMIT 10;

-- Find players whose wage is within the top 10% of all players.
SELECT player_id, long_name, wage_eur
FROM Player_Info
WHERE wage_eur > (SELECT PERCENTILE_CONT(0.9) WITHIN GROUP (ORDER BY wage_eur DESC) FROM Player_Info)
LIMIT 15;

--Find the players with the highest mentality composure score
SELECT PI.player_id, PI.long_name, PM.mentality_composure
FROM Player_Info PI
JOIN Player_Mentality PM ON PI.player_id = PM.player_id
ORDER BY PM.mentality_composure DESC
LIMIT 2;













