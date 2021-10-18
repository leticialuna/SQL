-- Create a Database

CREATE DATABASE sql_library;

-- Create Tables 

-- Create Table Autors:

CREATE TABLE autors (
id_autor int NOT NULL AUTO_INCREMENT,  
autor_name varchar(45) NOT NULL, 
autor_surname varchar(45),
PRIMARY KEY (id_publisher) 
);

-- Create Table Publishers:

CREATE TABLE publishers ( 
id_publisher int NOT NULL AUTO_INCREMENT,  
publisher_name varchar(45),  
PRIMARY KEY (id_publisher) 
);

-- Create Table Books:

CREATE TABLE books (
id_book INT NOT NULL AUTO_INCREMENT,
book_name varchar(70) NOT NULL,
id_autor INT NULL,
id_publisher INT NULL,
book_pages INT NULL,
PRIMARY KEY (id_book),
INDEX fk_id_autor_idx (id_autor ASC),
INDEX fk_id_publisher_idx (id_publisher ASC),
CONSTRAINT fk_id_autor
	  FOREIGN KEY (id_autor)
    REFERENCES sql_library.autors (id_autor)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
CONSTRAINT fk_id_publisher
	  FOREIGN KEY (id_publisher)
    REFERENCES sql_library.publishers (id_publisher)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
