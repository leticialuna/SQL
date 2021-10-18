DELIMITER //
CREATE PROCEDURE authors_data()
BEGIN
DECLARE error_sql TINYINT DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET error_sql = TRUE;
START TRANSACTION;
	INSERT INTO authors (author_name, author_surname) VALUES
		('Jose', 'Saramago');
	INSERT INTO authors (author_name, author_surname) VALUES
		('Machado', 'de Assis');
	INSERT INTO authors (author_name, author_surname) VALUES
		('George', 'Orwell');
	INSERT INTO authors (author_name, author_surname) VALUES
		('Clarice', 'Lispector');
	IF error_sql = FALSE THEN
		COMMIT;
        SELECT 'Data entered successfully.' AS Result;
	ELSE
		ROLLBACK;
        SELECT 'Error entering data.' AS Result;
	END IF;
END//
DELIMITER ;

CALL authors_data();

 SELECT * FROM authors;
