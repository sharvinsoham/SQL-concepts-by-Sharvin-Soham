DELIMITER ;
\
CREATE TRIGGER insert_employee BEFORE INSERT ON employee FOR EACH ROW BEGIN
IF NEW.id IS NULL THEN  /*Assign a unique id if not provided by user */
SET NEW.id = (SELECT COALESCE(MAX(id),0) + 1 FROM employee);
END IF;
END;//
DELIMITER ;

-- Syntax for creating a deep clone using triggers:
DELIMITER $$
CREATE TRIGGER insert_trigger BEFORE INSERT ON new_table FOR EACG NEW RECORD
BEGIN
DECLARE exit handler for SQLEXCEPTION;
IF OLD.id IS NULL THEN
SET NEW.id = (SELECT MAX(id) + 1 FROM new_table);
END IF;
END$$
DELIMITER ;


-- To enable this trigger, use following SQL statement:
ALTER TABLE new_table ENABLE TRIGGER insert_trigger;
-- Disabling Trigger
ALTER TABLE new_table DISABLE TRIGGER insert_trigger;
-- If you want to disable all triggers on a specific table at once, you can do it as follows:
ALTER TABLE new_table DISABLE ALL TRIGGERS;
-- To re-enable all triggers again, simply run the same command again:
ALTER TABLE new_table ENABLE ALL TRIGGERS;
-- You can also drop the trigger if you don't need it anymore by executing the following SQL statement:
DROP TRIGGER insert_trigger;