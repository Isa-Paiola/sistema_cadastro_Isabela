INSERT INTO livro(titulo, ano_publicacao, editora, autor, assunto)
VALUES
('Capitães da Areia', 1937, 1, 1, 4),
('Dom Casmurro', 1899, 2, 2, 4),
('A Biblioteca da Meia-Noite', 2020, 3, 3,2),
('Memórias Póstumas de Brás Cubas', 1881, 1, 2, 4);

UPDATE livro
SET ano_publicacao = 1938
WHERE titulo = 'Capitães da areia';

DELETE FROM livro
WHERE id_livro = 7;

SELECT livro.titulo AS nome,
    editora.nome_editora AS editora,
    autor.nome_autor AS autor, 
    assunto.descricao_assunto AS tema,
    livro.ano_publicacao AS ano 
FROM livro
JOIN editora ON livro.editora = editora.id_editora
JOIN autor ON livro.autor = autor.id_autor
JOIN assunto ON livro.assunto = assunto.id_assunto

