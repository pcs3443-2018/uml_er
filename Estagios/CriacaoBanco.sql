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
	nota DOUBLE,
	PRIMARY KEY (id,id_aluno)
);

CREATE TABLE usuarios (
	id INT NOT NULL AUTO_INCREMENT,
	login TEXT,
	senha TEXT,
	data_cadastro DATETIME NOT NULL,
	ativo BIT,
	PRIMARY KEY (id)
);

CREATE TABLE funcionalidades (
	id INT NOT NULL AUTO_INCREMENT,
	descricao TEXT NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE perfis (
	nome VARCHAR(50) NOT NULL,
	PRIMARY KEY (nome)
);

CREATE TABLE usuario_perfis (
	id_usuario INT NOT NULL,
	nome_perfil VARCHAR(50) NOT NULL,
	PRIMARY KEY (id_usuario,nome_perfil)
);

CREATE TABLE perfil_funcionalidades (
	nome_perfil VARCHAR(50) NOT NULL,
	id_funcionalidade INT NOT NULL,
	PRIMARY KEY (nome_perfil,id_funcionalidade)
);

ALTER TABLE estagios ADD CONSTRAINT estagios_alunos_FK FOREIGN KEY (id_aluno)
	REFERENCES alunos (id)
	ON DELETE CASCADE;

ALTER TABLE usuario_perfis ADD CONSTRAINT usuario_perfis_usuarios_FK FOREIGN KEY (id_usuario)
	REFERENCES usuarios (id)
	ON DELETE CASCADE;

ALTER TABLE usuario_perfis ADD CONSTRAINT usuario_perfis_perfis_FK FOREIGN KEY (nome_perfil)
	REFERENCES perfis (nome)
	ON DELETE CASCADE;

ALTER TABLE perfil_funcionalidades ADD CONSTRAINT perfil_funcionalidades_perfis_FK FOREIGN KEY (nome_perfil)
	REFERENCES perfis (nome)
	ON DELETE CASCADE;

ALTER TABLE perfil_funcionalidades ADD CONSTRAINT perfil_funcionalidades_funcionalidades_FK FOREIGN KEY (id_funcionalidade)
	REFERENCES funcionalidades (id)
	ON DELETE CASCADE;
