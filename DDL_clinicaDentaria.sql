/*DDL*/

/*Criando tabela Pacientes*/
CREATE TABLE Pacientes (
idPaciente INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
tipoLogradouro VARCHAR(10) NOT NULL,
nomeLogradouro VARCHAR(30) NOT NULL,
numero VARCHAR(6) NOT NULL,
complemento VARCHAR(10) DEFAULT 'não existe',
telefone CHAR(9),
cidade VARCHAR(30) NOT NULL, 
CONSTRAINT PRIMARY KEY (idPaciente),
CONSTRAINT CK_TipoLogradouro CHECK (tipoLogradouro='Praça' OR tipoLogradouro='Rua' OR tipoLogradouro='Avenida' OR tipoLogradouro='Estrada')
);

/*Criando tabela Dentistas*/
CREATE TABLE Dentistas (
idDentista INT AUTO_INCREMENT NOT NULL,
nome VARCHAR(50) NOT NULL,
cro CHAR(8) NOT NULL UNIQUE,
especialidade VARCHAR(14),
telefone CHAR(9),
celular CHAR(11),
CONSTRAINT PRIMARY KEY (idDentista),
CONSTRAINT CK_especialidade CHECK (especialidade='Ortodontia' OR especialidade='geral' OR especialidade='Periodontia' OR especialidade='Implantodontia')
);

/*Criando tabela Consultas */
CREATE TABLE Consultas (
idConsulta INT AUTO_INCREMENT NOT NULL,
idPaciente INT NOT NULL,
idDentista INT NOT NULL,
dataConsulta DATE NOT NULL,
horaConsulta TIME NOT NULL,
tipoConsulta VARCHAR(10) NOT NULL,
CONSTRAINT PRIMARY KEY(idConsulta),
CONSTRAINT FK_Consultas_Pacientes FOREIGN KEY (idPaciente)
REFERENCES Pacientes(idPaciente),
CONSTRAINT FK_Consultas_Dentistas FOREIGN KEY (idDentista)
REFERENCES Dentistas(idDentista),
CONSTRAINT CK_tipoConsulta CHECK (tipoConsulta='avaliação' OR tipoConsulta='tratamento')
);

ALTER TABLE consultas
ADD COLUMN observacao VARCHAR(250);

SELECT * from consultas 