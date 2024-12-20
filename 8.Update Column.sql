-- UPDATE Column--
UPDATE users
SET city='thane'
WHERE ar_id=4;

UPDATE users
SET city=
CASE
WHEN ar_id=5 THEN 'mumbai'
END;


UPDATE users
SET city=
CASE
WHEN ar_id=5 THEN 'dadar'

ELSE 'kalyan'
END;
