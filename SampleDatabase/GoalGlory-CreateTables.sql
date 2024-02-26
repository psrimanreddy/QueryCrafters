CREATE TABLE Player_Info (
    player_id INT PRIMARY KEY,
    long_name VARCHAR(255),
    player_positions VARCHAR(255),
    overall INT,
    potential INT,
    value_eur INT,
    wage_eur INT,
    age INT,
    height_cm INT,
    weight_kg INT,
    nationality_id INT,
    preferred_foot VARCHAR(255),
    weak_foot INT,
    skill_moves INT,
    international_reputation INT,
    body_type VARCHAR(255),
    real_face VARCHAR(255)
);

CREATE TABLE Player_Stats (
    player_id INT PRIMARY KEY,
    pace INT,
    shooting INT,
    passing INT,
    dribbling INT,
    defending INT,
    physic INT,
    FOREIGN KEY (player_id) REFERENCES Player_Info(player_id)
);

CREATE TABLE Player_Attacking (
    player_id INT PRIMARY KEY,
    attacking_crossing INT,
    attacking_finishing INT,
    attacking_heading_accuracy INT,
    attacking_short_passing INT,
    attacking_volleys INT,
    FOREIGN KEY (player_id) REFERENCES Player_Info(player_id)
);

CREATE TABLE Player_Skills (
    player_id INT PRIMARY KEY,
    skill_dribbling INT,
    skill_curve INT,
    skill_fk_accuracy INT,
    skill_long_passing INT,
    skill_ball_control INT,
    FOREIGN KEY (player_id) REFERENCES Player_Info(player_id)
);

CREATE TABLE Player_Movement (
    player_id INT PRIMARY KEY,
    movement_acceleration INT,
    movement_sprint_speed INT,
    movement_agility INT,
    movement_reactions INT,
    movement_balance INT,
    FOREIGN KEY (player_id) REFERENCES Player_Info(player_id)
);

CREATE TABLE Player_Power (
    player_id INT PRIMARY KEY,
    power_shot_power INT,
    power_jumping INT,
    power_stamina INT,
    power_strength INT,
    power_long_shots INT,
    FOREIGN KEY (player_id) REFERENCES Player_Info(player_id)
);

CREATE TABLE Player_Mentality (
    player_id INT PRIMARY KEY,
    mentality_aggression INT,
    mentality_interceptions INT,
    mentality_positioning INT,
    mentality_vision INT,
    mentality_penalties INT,
    mentality_composure INT,
    FOREIGN KEY (player_id) REFERENCES Player_Info(player_id)
);

CREATE TABLE Player_Defending (
    player_id INT PRIMARY KEY,
    defending_marking_awareness INT,
    defending_standing_tackle INT,
    defending_sliding_tackle INT,
    FOREIGN KEY (player_id) REFERENCES Player_Info(player_id)
);

CREATE TABLE Player_Goalkeeping (
    player_id INT PRIMARY KEY,
    goalkeeping_diving INT,
    goalkeeping_handling INT,
    goalkeeping_kicking INT,
    goalkeeping_positioning INT,
    goalkeeping_reflexes INT,
    goalkeeping_speed INT,
    FOREIGN KEY (player_id) REFERENCES Player_Info(player_id)
);

CREATE TABLE Player_Positions (
    player_id INT PRIMARY KEY,
    ls VARCHAR(50),
    st VARCHAR(50),
    rs VARCHAR(50),
    lw VARCHAR(50),
    lf VARCHAR(50),
    cf VARCHAR(50),
    rf VARCHAR(50),
    rw VARCHAR(50),
    lam VARCHAR(50),
    cam VARCHAR(50),
    ram VARCHAR(50),
    lm VARCHAR(50),
    lcm VARCHAR(50),
    cm VARCHAR(50),
    rcm VARCHAR(50),
    rm VARCHAR(50),
    lwb VARCHAR(50),
    ldm VARCHAR(50),
    cdm VARCHAR(50),
    rdm VARCHAR(50),
    rwb VARCHAR(50),
    lb VARCHAR(50),
    lcb VARCHAR(50),
    cb VARCHAR(50),
    rcb VARCHAR(50),
    rb VARCHAR(50),
    gk VARCHAR(50),
    FOREIGN KEY (player_id) REFERENCES Player_Info(player_id)
);

ALTER TABLE Player_Info ADD COLUMN club_name VARCHAR(255);


