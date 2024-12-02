CREATE OR REPLACE TRIGGER T_CC_UPDATE
AFTER
UPDATE ON PAYMENT_INFO
FOR EACH ROW
UPDATE BILLING_INFO SET creditCardNumber = :new.creditCardNumber WHERE
creditCardNumber = :old.creditCardNumber
/

--This is designed to mirror the creditCardNumber field for the 2 tables that the attribute is found in to avoid any data conflict--