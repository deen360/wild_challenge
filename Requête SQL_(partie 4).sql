SELECT customer.last_name, customer.first_name, address.address, address.latitude,
address.longitude,count(rental.customer_id) AS numbre_de_location
FROM dataengineer.customer JOIN dataengineer.address
ON customer.customer_id = address.address_id 
JOIN dataengineer.rental ON customer.customer_id = rental.customer_id
GROUP BY 1,2,3,4,5
ORDER BY count(rental.customer_id)
DESC
LIMIT 1;