CREATE TRIGGER employee_update_trg AFTER UPDATE ON emp

BEGIN
    UPDATE emp SET updatedon = datetime('NOW') WHERE ROWID = new.ROWID;
END;
