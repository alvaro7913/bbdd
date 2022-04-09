\c alvaro
DROP DATABASE posts;
CREAT DATABASE posts;
\c posts
-- crar tabla con id, usuario, fecha, contenido y descripción

CREATE TABLE posts(
    id SERIAL,
    userName VARCHAR(30)
    createdAt DATE,
    content VARCHAR,
    descripcion VARCHAR,
    PRIMARY KEY (id)
);
\dt
INSERT INTO post (userName, creatdAt, content, description)
VALUES ( 'Pamela', '2021-04-07', 'como saber', 'otra vez');
INSERT INTO post (userName, creatdAt, content, description)
VALUES ( 'Pamela', '2021-04-07', 'como sabes', 'una vez');
INSERT INTO post (userName, creatdAt, content, description)
VALUES ( 'Calros', '2021-04-07', 'como sabes', 'una vez');
SELECT * FROM post;

ALTER TABLE post ADD title VARCHAR(100)
SELECT * FROM post;

UPDATE post SET title = 'Crecer es bueno' WHERE id =1;
UPDATE post SET title = 'Crecer es dificil' WHERE id =2;
UPDATE post SET title = 'Otro error' WHERE id =3;
SELECT * FROM post;

