BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Tbl_perfil" (
	"ID_INDIVIDUO"	INTEGER,
	"NOME"	TEXT NOT NULL,
	"FOTO"	TEXT NOT NULL,
	"CARGO"	TEXT NOT NULL,
	PRIMARY KEY("ID_INDIVIDUO" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Tbl_formacao" (
	"ID_FORMACAO"	INTEGER,
	"CURSO"	TEXT NOT NULL,
	"INSTITUICAO"	TEXT NOT NULL,
	"DATA_INICIO_FORMACAO"	INTEGER NOT NULL,
	"DATA_TERMINO_FORMACAO"	INTEGER NOT NULL,
	"DIPLOMA_OBTIDO"	TEXT NOT NULL,
	"ESPECIALIZACAO"	TEXT NOT NULL,
	"ID_INDIVIDUO"	TEXT NOT NULL,
	FOREIGN KEY("ID_INDIVIDUO") REFERENCES "Tbl_perfil"("ID_INDIVIDUO"),
	PRIMARY KEY("ID_FORMACAO" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Tbl_experiencia" (
	"ID_EXPERIENCIA"	INTEGER,
	"CARGO"	TEXT NOT NULL,
	"NOME_EMPRESA"	TEXT NOT NULL,
	"DATA_INICIO_EXPERIENCIA"	INTEGER NOT NULL,
	"DATA_TERMINO_EXPERIENCIA"	INTEGER NOT NULL,
	"DESCRICAO"	INTEGER NOT NULL,
	"ID_INDIVIDUO"	TEXT NOT NULL,
	FOREIGN KEY("ID_INDIVIDUO") REFERENCES "Tbl_perfil"("ID_INDIVIDUO"),
	PRIMARY KEY("ID_EXPERIENCIA" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Tbl_habilidades" (
	"ID_HABILIDADE"	INTEGER,
	"NOME_HABILIDADE"	TEXT NOT NULL,
	"VALOR_HABILIDADE"	INTEGER NOT NULL,
	"ID_INDIVIDUO"	INTEGER NOT NULL,
	PRIMARY KEY("ID_HABILIDADE" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Tbl_sobre" (
	"ID_SOBRE"	INTEGER,
	"TRAJETORIA"	TEXT NOT NULL,
	"TELEFONE"	INTEGER NOT NULL,
	"EMAIL"	TEXT NOT NULL,
	"ENDERECO"	TEXT NOT NULL,
	"ID_INDIVIDUO"	INTEGER,
	FOREIGN KEY("ID_INDIVIDUO") REFERENCES "Tbl_perfil"("ID_INDIVIDUO"),
	PRIMARY KEY("ID_SOBRE" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Tbl_personalidade" (
	"ID_PERSONALIDADE"	INTEGER,
	"NOME_PERSONALIDADE"	TEXT NOT NULL,
	"VALOR_PERSONALIDADE"	INTEGER NOT NULL,
	"ID_SOBRE"	INTEGER NOT NULL,
	FOREIGN KEY("ID_SOBRE") REFERENCES "Tbl_sobre"("ID_SOBRE"),
	PRIMARY KEY("ID_PERSONALIDADE" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "Tbl_habilidade" (
	"ID_HABILIDADE"	INTEGER,
	"NOME_HABILIDADE"	TEXT NOT NULL,
	"VALOR_HABILIDADE"	INTEGER NOT NULL,
	"ID_SOBRE"	INTEGER NOT NULL,
	PRIMARY KEY("ID_HABILIDADE" AUTOINCREMENT)
);
COMMIT;