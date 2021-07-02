-- Einrichtung von PostgreSQL (Terminal)

--Postgres-Konto:
-- sudo -i -u postgres

--Start
psql

--Datenbank erstellen
createdb postgres

--Neue Tabelle erstellen
CREATE TABLE sales_data (
    id serial PRIMARY KEY,
    type varchar (50) NOT NULL,
    sales INTEGER NOT NULL,
    location varchar(25) check (location in ('north', 'south', 'west', 'east', 'northeast', 'southeast', 'southwest', 'northwest')),
    date date
);


--Tabelle anzeigen lassen
\dt

--Daten hinzufügen
INSERT INTO sales_data (type, sales, location, date) VALUES ('product', 100, 'south', '2021-07-2');

-- Daten abfragen
SELECT * FROM sales_data


-- Tabelle löschen
DROP TABLE sales

-- Ende
\q



CREATE USER manuel WITH PASSWORD 'jw8s0F4' CREATEDB;





