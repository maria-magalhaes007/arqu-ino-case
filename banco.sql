CREATE DATABASE arquiComp;

USE arquiComp;

CREATE TABLE medida (
id INT PRIMARY KEY AUTO_INCREMENT,
lm35_temperatura DECIMAL(6,2),
chave TINYINT,
momento TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
fkSala INT,
	CONSTRAINT chFkSala FOREIGN KEY(fksala) REFERENCES sala(id)
);

CREATE TABLE sala (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(25)
);

INSERT medida (lm35_temperatura, chave, fkSala) VALUES
	(?,?,?);
    
INSERT sala (nome) VALUES
	('Sala 1'),
	('Sala 2'),
	('Sala 3');
    
SELECT CONCAT(s.nome, '|', m.lm35_temperatura, '|')
FROM sala s JOIN medida m ON m.fkSala = s.id;