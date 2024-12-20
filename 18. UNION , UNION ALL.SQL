
-- UNION--
SELECT a.ar_id,heroic_name, enamy_name from avengers as a
RIGHT JOIN avengers_enemy as ae
ON a.ar_id=ae.ar_id
UNION
SELECT a.ar_id,heroic_name, enamy_name from avengers as a
RIGHT JOIN avengers_enemy as ae
ON a.ar_id=ae.ar_id;

-- UNION ALL--
SELECT a.ar_id,heroic_name, enamy_name from avengers as a
RIGHT JOIN avengers_enemy as ae
ON a.ar_id=ae.ar_id
UNION ALL
SELECT a.ar_id,heroic_name, enamy_name from avengers as a
RIGHT JOIN avengers_enemy as ae
ON a.ar_id=ae.ar_id;


