--1
SELECT * 
FROM (SELECT 
   `ospiti`.`name`,
   COUNT(`ospiti`.`name`) AS numero_prenotazioni
FROM `prenotazioni_has_ospiti` 
INNER JOIN `ospiti`
ON `ospiti`.`id` = `prenotazioni_has_ospiti`.`ospite_id`
GROUP BY `ospiti`.`name`) AS `n_prenotazioni`
WHERE numero_prenotazioni >= 2

--2
SELECT prenotazione_id, ospite_id, name, lastname
FROM `prenotazioni_has_ospiti` 
LEFT JOIN ospiti
ON prenotazioni_has_ospiti.ospite_id = ospiti.id

--3
