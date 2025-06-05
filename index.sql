-- 1. CREATE: Criação da tabela "clientes"
CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,  -- Define a coluna "id" como chave primária e auto-incrementável
    nome VARCHAR(100),                  -- Define a coluna "nome" como string de até 100 caracteres
    idade INT,                          -- Define a coluna "idade" como número inteiro
    cidade VARCHAR(100)                 -- Define a coluna "cidade" como string de até 100 caracteres
);
 
-- 2. INSERT: Inserção de dados na tabela "clientes"
INSERT INTO clientes (nome, idade, cidade)
VALUES ('João', 30, 'São Paulo'),      -- Insere o cliente João com idade 30 e cidade São Paulo
       ('Maria', 25, 'Rio de Janeiro'); -- Insere o cliente Maria com idade 25 e cidade Rio de Janeiro
 
-- 3. UPDATE: Atualização de dados na tabela "clientes"
UPDATE clientes
SET idade = 31                           -- Atualiza a idade do cliente "João" para 31
WHERE nome = 'João';                     -- Condição para selecionar o cliente "João"
 
-- 4. DELETE: Remoção de dados da tabela "clientes"
DELETE FROM clientes
WHERE nome = 'Maria';                    -- Deleta o cliente Maria da tabela
 
-- 5. ALTER: Modificação da estrutura da tabela "clientes"
ALTER TABLE clientes
ADD COLUMN email VARCHAR(150);           -- Adiciona uma coluna "email" à tabela "clientes" para armazenar emails
 
-- 6. GRANT: Concessão de permissões de leitura para um usuário
GRANT SELECT ON clientes TO user1;       -- Concede permissão ao usuário "user1" para realizar consultas (SELECT) na tabela "clientes"
 
-- 7. REVOKE: Revogação de permissões de leitura de um usuário
REVOKE SELECT ON clientes FROM user1;    -- Revoga a permissão de SELECT do usuário "user1" na tabela "clientes"
 
-- 8. BEGIN / COMMIT: Início e finalização de uma transação
BEGIN;                                   -- Inicia uma transação, garantindo que as operações a seguir sejam feitas de maneira atômica
 
UPDATE clientes
SET cidade = 'Belo Horizonte'            -- Atualiza a cidade do cliente "João" para "Belo Horizonte"
WHERE nome = 'João';                     -- Condição para selecionar o cliente "João"
 
-- Aqui podem ser feitas outras operações dentro da transação...
 
COMMIT;                                  -- Finaliza a transação e aplica as mudanças feitas no banco de dados
 
