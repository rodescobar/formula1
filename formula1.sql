-- Tabela de equipes
CREATE TABLE equipes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    carro VARCHAR(255),
    pontos FLOAT DEFAULT 0
);

-- Tabela de pilotos
CREATE TABLE pilotos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    equipe_id INT,
    nacionalidade VARCHAR(100),
    pontos FLOAT DEFAULT 0,
    FOREIGN KEY (equipe_id) REFERENCES equipes(id) ON DELETE SET NULL
);

-- Tabela de pontuação
CREATE TABLE pontuacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    piloto_id INT,
    equipe_id INT,
    pontos FLOAT,
    FOREIGN KEY (piloto_id) REFERENCES pilotos(id) ON DELETE SET NULL,
    FOREIGN KEY (equipe_id) REFERENCES equipes(id) ON DELETE SET NULL
);

-- Tabela de carros
CREATE TABLE carros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    equipe_id INT,
    FOREIGN KEY (equipe_id) REFERENCES equipes(id) ON DELETE SET NULL
);

-- Tabela de corridas
CREATE TABLE corridas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data DATE NOT NULL,
    local_nome VARCHAR(255),
    local_cidade VARCHAR(255),
    local_pais VARCHAR(255),
    local_data DATE
);
