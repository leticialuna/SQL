-- Create a Database

CREATE DATABASE sql_library;

-- Create Tables 

-- Create Table Authors:

CREATE TABLE authors (
id_author int NOT NULL AUTO_INCREMENT,  
author_name varchar(45) NOT NULL, 
author_surname varchar(45),
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
id_author INT NULL,
id_publisher INT NULL,
book_pages INT NULL,
PRIMARY KEY (id_book),
INDEX fk_id_author_idx (id_author ASC),
INDEX fk_id_publisher_idx (id_publisher ASC),
CONSTRAINT fk_id_author
	  FOREIGN KEY (id_author)
    REFERENCES sql_library.authors (id_author)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
CONSTRAINT fk_id_publisher
	  FOREIGN KEY (id_publisher)
    REFERENCES sql_library.publishers (id_publisher)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
