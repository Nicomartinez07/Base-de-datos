Juego.sql 

SELECT * FROM inhabitant

SELECT * FROM inhabitant WHERE state = 'friendly'

SELECT * FROM inhabitant WHERE state = 'friendly' AND  job = 'weaponsmith'

SELECT * FROM inhabitant WHERE state = 'friendly' AND  job LIKE '&smith'

SELECT personid FROM inhabitant WHERE name = 'Stranger'

SELECT gold FROM inhabitant WHERE name = 'Stranger'

SELECT * FROM ITEM WHERE owner IS NULL

UPDATE item SET owner = 20 WHERE owner IS NULL 

SELECT item, owner FROM ITEM WHERE owner = 20

SELECT * FROM inhabitant WHERE (state = 'friendly') AND (job = 'dealer' or job = 'merchant')

UPDATE item SET owner = 15 WHERE (item = 'ring' AND owner = 20)
OR (item = 'teapot' AND owner = 20)

UPDATE inhabitant SET name = 'Alan' WHERE name = 'Stranger' or personid = 20

SELECT * FROM inhabitant WHERE job = 'baker' ORDER BY gold DESC

SELECT * FROM inhabitant WHERE job = 'pilot'

SELECT village.name FROM village, inhabitant WHERE village.villageid = inhabitant.villageid AND inhabitant.name = 'Dirty Dieter'

SELECT inhabitant.name FROM inhabitant, village WHERE village.name = 'Onionville' AND village.chief = inhabitant.personid

