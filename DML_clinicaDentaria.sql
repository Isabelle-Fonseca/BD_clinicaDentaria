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

/*Inserir 3 consultas, sendo 1 para o dentista que cuida de Ortodontia e 2 para o dentista cuja especialidade é Geral. O tipo de todas elas será Avaliação.*/
INSERT INTO consultas (idDentista, idPaciente, dataConsulta, horaConsulta, tipoConsulta)
values (1, 5, '2020-12-02', '10:00:24', 'avaliação'),
(2, 1, '2023-02-10', '09:30:22', 'avaliação'),
(2, 3, '2023-03-24', '08:00:47', 'avaliação');

SELECT * FROM consultas

/*Atualizar todos os dados, exceto nome e cro, do dentista que cuida de implantodontia, mudando sua especialidade para Geral; */
UPDATE `clinica_dentaria`.`dentistas` 
SET `especialidade`='geral', `telefone`='133222503', `celular`='13996397842' 
WHERE  `idDentista`=4;

SELECT * FROM dentistas

/*Atualizar a data e hora de uma consulta marcada com um dentista cuja especialidade é Geral; */
UPDATE `clinica_dentaria`.`consultas` 
SET `dataConsulta`='2023-02-17', `horaConsulta`='09:00:00' 
WHERE  `idConsulta`=2;

SELECT * FROM consultas

/*Atualizar a consulta do dentista de especialidade ortodontia, mudando o tipo de consulta para Tratamento e inserindo uma observação do dentista com o seguinte texto: “Tratamento será realizado em 10 consultas. Prioridade: Moderada. Remédio aplicado: Ponstan, caso sinta dores” */
UPDATE `clinica_dentaria`.`consultas` 
SET `tipoConsulta`='tratamento', `observacao`='Tratamento será realizado em 10 consultas. Prioridade: Moderada. Remédio aplicado: Ponstan, caso sinta dores' 
WHERE  `idConsulta`=1;

SELECT * FROM consultas

/*Selecionar nome e telefone de todo os pacientes que residem em Santos, em ordem alfabética;*/
SELECT nome, telefone, cidade from pacientes
WHERE cidade = 'santos'
ORDER BY nome ASC
