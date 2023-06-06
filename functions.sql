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