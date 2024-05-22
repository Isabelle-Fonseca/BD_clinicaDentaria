/*DML*/

/*Inserir 6 pacientes de forma implícita, sendo 3 de Santos, 1 de Guarujá e 2 de São Vicente;*/
INSERT INTO Pacientes
VALUES
(1,'João Carlos', '12345678901', 'Rua', 'Rua A', '123', DEFAULT, '1333613242', 'Santos'),
(2,'Maria Oliveira', '23456789012', 'Avenida', 'Avenida B', '456', 'ap 2', '113361324', 'Santos'),
(3,'Julia Mika', '34567890123', 'Praça', 'Praça C', '789', DEFAULT, '133351323', 'Santos'),
(4,'Ana Souza', '45678901234', 'Estrada', 'Estrada D', '101', DEFAULT,'123221324', 'São Vicente'),
(5,'Nyckoly Siqueira', '56789012345', 'Rua', 'Rua E', '202', DEFAULT, '143361323', 'Guarujá');
(6,'Isabella Tavares', '56789012123', 'Rua', 'Rua B', '204', DEFAULT, '143361323', 'São Vicente');

SELECT * FROM pacientes


/*Inserir 4 dentistas de forma explícita, sendo 1 de cada especialidade;*/
INSERT INTO Dentistas (nome, cro, especialidade, telefone, celular) VALUES
('Dr. Pedro Almeida', 'CRO12345', 'Ortodontia', '123456789', '12995678901'),
('Dra. Júlia Costa', 'CRO23456', 'geral', '234567890', '23996789012'),
('Dr. Marcos Lima', 'CRO34567', 'Periodontia', NULL , '34997890123'),
('Dra. Clara Silva', 'CRO45678', 'Implantodontia', NULL , '45998901234');

SELECT * FROM dentistas  

lklk