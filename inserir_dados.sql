
-- inserçao de dados na tabela utilizador
INSERT INTO `utilizador` (`nome`, `objetivo`, `tipo_user`, `data_nascimento`, `email`) VALUES 
('João Silva', 'Perder peso', 'Aluno', '1990-05-15', 'joao.silva@email.com'),
('Maria Santos', 'Ganhar massa muscular', 'Aluno', '1985-08-22', 'maria.santos@email.com'),
('Carlos Pereira', 'Melhorar flexibilidade', 'Aluno', '1992-11-30', 'carlos.pereira@email.com'),
('Ana Costa', 'Reduzir stress', 'Aluno', '1988-03-10', 'ana.costa@email.com');

-- inserção de dados na tabela beneficio
INSERT INTO `beneficio` (`nome`, `descricao`) VALUES
('Flexibilidade', 'Aumenta a amplitude de movimento das articulações e melhora a elasticidade muscular'),
('Força', 'Fortalece os músculos e aumenta a resistência física'),
('Equilíbrio', 'Melhora a concentração e o equilíbrio corporal'),
('Respiração', 'Melhora a capacidade pulmonar e a respiração diafragmática'),
('Relaxamento', 'Reduz o stress e promove o relaxamento do corpo e mente'),
('Postura', 'Corrige a postura corporal e alivia dores nas costas'),
('Circulação', 'Melhora a circulação sanguínea e a oxigenação'),
('Energia', 'Aumenta os níveis de energia e vitalidade'),
('Concentração', 'Melhora o foco mental e a consciência corporal'),
('Digestão', 'Estimula o sistema digestivo e melhora a saúde intestinal');

-- inserção de dados na tabela postura
INSERT INTO `postura` (`id_beneficio`, `posicao_corpo`, `nome_original`, `nome_portugues`, `nivel_dificuldade`) VALUES
(1, 'em pé', 'Uttanasana', 'Dobra para a Frente', 'fácil'),
(2, 'em pé', 'Tadasana', 'Postura da Montanha', 'fácil'),
(3, 'em pé', 'Virabhadrasana I', 'Postura do Guerreiro I', 'intermédio'),
(3, 'em pé', 'Virabhadrasana II', 'Postura do Guerreiro II', 'intermédio'),
(1, 'sentada', 'Paschimottanasana', 'Dobra Sentada', 'intermédio'),
(4, 'sentada', 'Padmasana', 'Postura do Lótus', 'difícil'),
(5, 'deitada', 'Savasana', 'Postura do Cadáver', 'fácil'),
(6, 'deitada', 'Bhujangasana', 'Postura da Cobra', 'intermédio'),
(2, 'deitada', 'Navasana', 'Postura do Barco', 'intermédio'),
(1, 'invertida', 'Adho Mukha Svanasana', 'Postura do Cão Virado para Baixo', 'intermédio'),
(3, 'invertida', 'Sirsasana', 'Postura da Cabeça', 'difícil'),
(7, 'em pé', 'Vrikshasana', 'Postura da Árvore', 'intermédio'),
(9, 'sentada', 'Sukhasana', 'Postura Fácil', 'fácil'),
(10, 'deitada', 'Pavanamuktasana', 'Postura de Libertação do Vento', 'fácil'),
(8, 'em pé', 'Surya Namaskar', 'Saudação ao Sol', 'intermédio');

-- inserção de dados na tabela favoritos
INSERT INTO `favoritos` (`id_postura`, `id_utilizador`) VALUES (4, 1);
INSERT INTO `favoritos` (`id_postura`, `id_utilizador`) VALUES (3, 4);
INSERT INTO `favoritos` (`id_postura`, `id_utilizador`) VALUES (4, 2);
INSERT INTO `favoritos` (`id_postura`, `id_utilizador`) VALUES (2, 2);
INSERT INTO `favoritos` (`id_postura`, `id_utilizador`) VALUES (1, 3);
INSERT INTO `favoritos` (`id_postura`, `id_utilizador`) VALUES (3, 1);
INSERT INTO `favoritos` (`id_postura`, `id_utilizador`) VALUES (1, 1);