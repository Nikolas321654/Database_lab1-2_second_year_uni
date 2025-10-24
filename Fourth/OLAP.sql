-- SELECT COUNT(power_level) AS power_count
-- FROM superheroes;

-- SELECT MIN(power_level) AS min_power
-- FROM superheroes;

-- SELECT MAX(power_level) AS max_power
-- FROM superheroes;

-- SELECT AVG(power_level) AS avg_power
-- FROM superheroes;

-- SELECT SUM(power_level) AS power_sum
-- FROM superheroes;


-- SELECT hero_name, team_id
-- FROM superheroes 
-- GROUP BY team_id, hero_name
-- HAVING team_id > 2;

-- SELECT team_id, hero_name, COUNT(*)
-- FROM superheroes
-- WHERE power_level < 90 AND power_level > 75 
-- GROUP BY first_appearance, team_id, hero_name;

-- SELECT 
--     h.hero_name, 
--     h.real_name, 
--     t.team_name, 
--     u.name as universe
-- FROM superheroes h
-- INNER JOIN universes u ON h.universe_id = u.id
-- INNER JOIN teams t ON h.team_id = t.id;
