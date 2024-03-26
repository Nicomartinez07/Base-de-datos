/* ejercicio 1 */

SELECT name, Composer, Milliseconds FROM tracks
ORDER BY name

/* ejercicio 2 */

SELECT FirstName, LastName, Address, City FROM customers
ORDER BY FirstName

/* ejercicio 3 */

SELECT name, Milliseconds FROM tracks WHERE Composer IS NULL AND Milliseconds > 2900000
ORDER BY name

/* ejercicio 4 */

SELECT FirstName, LastName,Company FROM customers WHERE Company IS NOT NULL 
ORDER BY FirstName

/* ejercicio 5 */

SELECT DISTINCT BillingCity FROM invoices WHERE BillingAddress IS NOT NULL 
ORDER BY BillingCity DESC

/* ejercicio 6 */

SELECT Title FROM albums WHERE Title LIKE '%OF%' --con %var% es contiene
ORDER BY Title ASC

/* ejercicio 7 */

SELECT t.name, g.name FROM tracks t JOIN genres g ON t.GenreId = g.GenreId
ORDER BY t.name ASC
--Al usar Join tengo q renombrar las tablas       El ON sirve para igualar 2 tablas distintas

/* ejercicio 8 */

SELECT t.name, a.Title FROM tracks t JOIN albums a ON t.AlbumId = a.AlbumId
ORDER BY a.Title DESC