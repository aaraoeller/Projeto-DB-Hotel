DELIMITER $

CREATE FUNCTION GET_CUSTOMER_NAME(IDCUSTOMER INT)
RETURNS VARCHAR(30)
BEGIN
    DECLARE NAME_CUSTOMER VARCHAR(30);
    
    SELECT NAME INTO NAME_CUSTOMER
    FROM RESERVE
    WHERE FK_ID_CUSTOMER = IDCUSTOMER;
    
    RETURN NAME_CUSTOMER;
END$

DELIMITER;


DELIMITER //

CREATE FUNCTION obterNomeHospede(id_hospede INT)
RETURNS VARCHAR(255)
BEGIN
    DECLARE nome_hospede VARCHAR(255);
    
    SELECT nome INTO nome_hospede
    FROM tabela_reservas
    WHERE id_hospede = id_hospede;
    
    RETURN nome_hospede;
END //

DELIMITER ;