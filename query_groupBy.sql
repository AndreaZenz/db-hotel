--1 
SELECT COUNT(`id`), YEAR(`date_of_birth`) AS `year`
FROM `ospiti` 
GROUP BY `year`;

--2

SELECT SUM(`price`),`status`  as status_pay
FROM `pagamenti` 
GROUP BY `status`

--3
SELECT COUNT(`stanza_id`),`stanza_id` AS stanza 
FROM `prenotazioni` 
GROUP BY `stanza_id`