
/* consignas.txt */

/* ejercicio 1 */

SELECT FirstName, LastName FROM employees
ORDER BY FirstName

/* ejercicio 2 */

SELECT Title FROM employees WHERE ReportsTo IS NULL
ORDER BY Title

/* ejercicio 3 */

SELECT total, BillingAddress FROM invoices 
ORDER BY total DESC LIMIT 5

/* ejercicio 4 */

SELECT t.name, t.Milliseconds FROM tracks t JOIN albums a WHERE a.Title = "Big Ones" 
ORDER BY t.Milliseconds DESC 

/* ejercicio 5 */

SELECT g.name, COUNT(t.GenreId) as sumaCanciones --cuenta las canciones
FROM tracks t JOIN genres g ON t.GenreId = g.GenreId 
GROUP BY t.GenreId --agrupa por 
ORDER BY g.name ASC

/* ejercicio 6 */

SELECT a.Title, COUNT(t.name) as sumaCanciones FROM tracks t JOIN albums a ON a.AlbumId = t.AlbumId 
GROUP BY a.AlbumId
HAVING sumaCanciones >= 5 --Having es para usar los campos contados/sumados
ORDER BY a.Title ASC


/* ejercicio 7 */

SELECT a.Title, COUNT(t.name) as sumaCanciones, SUM(total) FROM tracks t JOIN albums a ON a.AlbumId = t.AlbumId 
GROUP BY a.AlbumId
HAVING sumaCanciones >= 5 --Having es para usar los campos contados/sumados
ORDER BY a.Title ASC

ORDER BY precio ASC LIMIT 10

--------------------------------------------------------------------------------------------

SELECT COUNT(t.name * UnitPrice) as cancion,a.Title FROM tracks t JOIN albums a ON t.AlbumId = a.AlbumId
GROUP BY t.AlbumId

ORDER BY precio ASC LIMIT 10

/* ejercicio 8 */

/* ejercicio 9 */

/* ejercicio 10 */