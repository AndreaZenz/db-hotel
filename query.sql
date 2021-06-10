-- Seleziona tutti gli ospiti che sono stati identificati con la carta di identità

SELECT `document_type`, `id`
FROM `ospiti`
WHERE `document_type` = "CI"

--seleziona tutti gli ospiti che sono nati dopo il 1988


SELECT `name`, `lastname`, `date_of_birth`,  `id`
FROM `ospiti`
WHERE `date_of_birth` > "1988"

-- seleziona tutti gli ospiti che hanno piu di 20 anni (al momento dell'esecuzione della query)

SELECT `name`,`id`,`date_of_birth`
FROM `ospiti`
WHERE YEAR(`date_of_birth`) <= (YEAR(CURRENT_DATE) - 20)
ORDER BY `date_of_birth` 

-- seleziona tutti gli ospiti il cui nome inizia con la D

SELECT `id`,`name`
FROM `ospiti` 
WHERE `name` LIKE "D%"

-- clacola il totale incassato dagli ordini accepted

SELECT SUM(`price`)
FROM `pagamenti`
WHERE `status` = "accepted"

-- qual'è il prezzo massimo pagato? 

SELECT MAX(`price`) 
AS `largest_price`
FROM `pagamenti`

-- Seleziona gli ospiti riconosciuti con patente e nati nel 1975

SELECT * 
FROM `ospiti` 
WHERE `document_type` = "Driver License"
AND YEAR(`date_of_birth`) = "1975"

--quanti paganti sono anche ospiti

SELECT * 
FROM `paganti` 
WHERE `ospite_id` IS NOT NULL;

-- quanti posti letto ha in totale l'hotel

SELECT SUM(`beds`) as `total_available_beds`
FROM `stanze`