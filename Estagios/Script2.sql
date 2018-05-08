--<ScriptOptions statementTerminator=";"/>

CREATE TABLE alunos (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(150) NOT NULL,
	numero_usp VARCHAR(9) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE estagios (
	id INT NOT NULL AUTO_INCREMENT,
	data_inicio DATETIME NOT NULL,
	data_fim DATETIME,
	id_aluno INT NOT NULL,
	nome_empresa VARCHAR(150),
	PRIMARY KEY (id,id_aluno)
);

ALTER TABLE estagios ADD CONSTRAINT estagios_alunos_FK FOREIGN KEY (id_aluno)
	REFERENCES alunos (id)
	ON DELETE CASCADE;

