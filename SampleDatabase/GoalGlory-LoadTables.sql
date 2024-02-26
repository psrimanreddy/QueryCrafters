COPY player_info
FROM 'C:\Program Files\PostgreSQL\15\Player_Info.csv'
DELIMITER ','
CSV HEADER;

COPY player_stats
FROM 'C:\Program Files\PostgreSQL\15\Player_Stats.csv'
DELIMITER ','
CSV HEADER;

COPY player_attacking
FROM 'C:\Program Files\PostgreSQL\15\Player_Attacking.csv'
DELIMITER ','
CSV HEADER;

COPY player_skills
FROM 'C:\Program Files\PostgreSQL\15\Player_Skills.csv'
DELIMITER ','
CSV HEADER;

COPY player_movement
FROM 'C:\Program Files\PostgreSQL\15\Player_Movement.csv'
DELIMITER ','
CSV HEADER;

COPY player_power
FROM 'C:\Program Files\PostgreSQL\15\Player_Power.csv'
DELIMITER ','
CSV HEADER;

COPY player_mentality
FROM 'C:\Program Files\PostgreSQL\15\Player_Mentality.csv'
DELIMITER ','
CSV HEADER;

COPY player_defending
FROM 'C:\Program Files\PostgreSQL\15\Player_Defending.csv'
DELIMITER ','
CSV HEADER;

COPY player_goalkeeping
FROM 'C:\Program Files\PostgreSQL\15\Player_Goalkeeping.csv'
DELIMITER ','
CSV HEADER;

COPY player_positions
FROM 'C:\Program Files\PostgreSQL\15\Player_Positions.csv'
DELIMITER ','
CSV HEADER;

COPY player_info (player_id, club_name)
FROM 'C:\Program Files\PostgreSQL\15\Player_Info.csv' DELIMITER ',' CSV HEADER;

ALTER TABLE player_info DROP COLUMN club_name;


