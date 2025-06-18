CREATE TABLE IF NOT EXISTS users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(45) NOT NULL,
  password VARCHAR(64) NOT NULL,
  role VARCHAR(45) NOT NULL,
  enabled BOOLEAN DEFAULT TRUE
);

CREATE TABLE IF NOT EXISTS produto (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    descricao TEXT,
    preco NUMERIC(10, 2),
    categoria INT,
    CONSTRAINT fk_categoria FOREIGN KEY (categoria) REFERENCES categoria(id)
);

CREATE TABLE IF NOT EXISTS categoria (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(20)
);

