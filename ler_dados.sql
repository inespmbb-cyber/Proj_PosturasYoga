-- OPERAÇOES DE LEITURA E MANIPULAÇAO DE DADOS - SQL

-- 1. Ver todos os utilizadores registados:
SELECT * FROM utilizador;


-- 2. Procurar utilizador por nome (apelido Silva):
SELECT * FROM utilizador WHERE nome LIKE "%Silva%";


-- 3. Procurar utilizadores por data de nascimento:
SELECT * FROM utilizador WHERE data_nascimento < '1990-01-01';


-- 4. Adicionar utilizador:
INSERT INTO utilizador (nome, objetivo, tipo_user, data_nascimento, email)
VALUES ('Inês Branco ', 'Aumentar o foco', 'instrutor', '1993-04-30', 'ines.branco@email.com');


-- 5. Ver todas as posturas disponíveis:
SELECT * FROM postura;


-- 6. Ver posturas com beneficio a nível respiratório (beneficio ID 4):
SELECT * FROM postura WHERE id_beneficio = 1;


-- 7. Listar nomes de posturas e seus benefícios (JOIN entre postura e beneficio):
SELECT p.nome_portugues, b.nome AS beneficio
FROM postura p
JOIN beneficio b ON p.id_beneficio = b.id;


-- 8. Procurar posturas de nível fácil:
SELECT * FROM postura WHERE nivel_dificuldade = 'fácil';


-- 9. Procurar posturas deitado (caso haja essa limitação):
SELECT * FROM postura WHERE posicao_corpo = 'deitada';


-- 10. Atualizar nome de um beneficio, de "Força" para "Resistência":
SELECT * FROM beneficio WHERE nome = 'Força'; -- FAZER SELECT ANTES
UPDATE beneficio SET nome = 'Resistência' WHERE nome = 'Força';


-- 11. Adicionar um favorito (ID postura 2, ID utilizador 1):
INSERT INTO favoritos (id_postura, id_utilizador) VALUES (2, 1);


-- 12. Ver as posturas favoritas de um determinado utilizador (ID utilizador 1 - João Silva): 
SELECT p.nome_portugues, p.nome_original
FROM postura p
JOIN favoritos f ON p.id = f.id_postura
WHERE f.id_utilizador = 1;


-- 13. Remover um favorito:
DELETE FROM favoritos WHERE id = 1;


-- 14. Mudar dados de uma postura
UPDATE postura SET nivel_dificuldade = 'intermédio' WHERE id = 15;




