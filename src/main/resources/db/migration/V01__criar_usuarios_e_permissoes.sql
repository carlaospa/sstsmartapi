CREATE TABLE usuario (
	idusuario BIGINT(20) PRIMARY KEY,
	apelido VARCHAR(50) NOT NULL,
	nome VARCHAR(70) NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha VARCHAR(150) NOT NULL,
	sexo VARCHAR(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE permissao (
	idpermissao BIGINT(20) PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usuario_permissao (
	idusuario BIGINT(20) NOT NULL,
	idpermissao BIGINT(20) NOT NULL,
	PRIMARY KEY (idusuario, idpermissao),
	FOREIGN KEY (idusuario) REFERENCES usuario(idusuario),
	FOREIGN KEY (idpermissao) REFERENCES permissao(idpermissao)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO usuario (idusuario, apelido, nome, email, senha, sexo) values (1, 'admin', 'Administrador', 'carlaospa@gmail.com', '1234', 'MASCULINO');

INSERT INTO permissao (idpermissao, descricao) values (1, 'ROLE_CADASTRAR_USUARIO');
INSERT INTO permissao (idpermissao, descricao) values (2, 'ROLE_PESQUISAR_USUARIO');
INSERT INTO permissao (idpermissao, descricao) values (3, 'ROLE_REMOVER_USUARIO');

-- admin
INSERT INTO usuario_permissao (idusuario, idpermissao) values (1, 1);
INSERT INTO usuario_permissao (idusuario, idpermissao) values (1, 2);
INSERT INTO usuario_permissao (idusuario, idpermissao) values (1, 3);

