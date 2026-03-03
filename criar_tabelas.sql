CREATE TABLE utilizador (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL COMMENT 'nome do utilizador',
    objetivo VARCHAR(100) NOT NULL,
    tipo_user ENUM('aluno','instrutor','administrador') NOT NULL COMMENT 'tipo de acesso do utilizador',
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE beneficio (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE postura (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_beneficio INT(11) NOT NULL,
    posicao_corpo ENUM('em pé', 'sentada', 'deitada', 'invertida') NOT NULL,
    nome_original VARCHAR(100) NOT NULL,
    nome_portugues VARCHAR(100) NOT NULL,
    nivel_dificuldade ENUM('fácil', 'intermédio', 'difícil') NOT NULL,
    FOREIGN KEY (id_beneficio) REFERENCES beneficio(id)
);

CREATE TABLE favoritos (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_postura INT(11) NOT NULL,
    id_utilizador INT(11) NOT NULL,
    FOREIGN KEY (id_postura) REFERENCES postura(id),
    FOREIGN KEY (id_utilizador) REFERENCES utilizador(id)
);





