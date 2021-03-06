\c alvaro
DROP DATABASE post;
CREATE DATABASE post;
\c post
-- crar tabla con id, usuario, fecha, contenido y descripción

CREATE TABLE post(
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
VALUES ( 'Pedro', '2021-04-06', 'como sabes', 'una vez');
INSERT INTO post (userName, creatdAt, content, description)
VALUES ( 'Pedro', '2021-04-06', 'no sabes', 'la vez');
INSERT INTO post (userName, creatdAt, content, description)
VALUES ( 'Carlos', '2021-04-07', 'como sabes', 'ultima vez');
SELECT * FROM post;

ALTER TABLE post ADD title VARCHAR(100)
SELECT * FROM post;

UPDATE post SET title = 'Crecer es bueno' WHERE id =1;
UPDATE post SET title = 'Crecer es dificil' WHERE id =2;
UPDATE post SET title = 'Otro error' WHERE id =3;
SELECT * FROM post;

INSERT INTO post (userName, creatdAt, content, description, title)
VALUES ('Pedro', '2021-04-10', 'hoy por mi...', 'estoy por cerrar mi pc', 'adios');
INSERT INTO post (userName, creatdAt, content, description, title)
VALUES ('Pedro', '2021-04-10', 'otra vez', 'el profe no está ni ahí', 'vamos por mas');
SELECT * FROM post;

-- se va carlos
DELETE FROM post WHERE userName = 'Carlos';
SELECT * FROM post;

-- Vuelve carlos
INSERT INTO post (userName, creatdAt, content, description, title)
VALUES ('Carlos', '2021-04-11', 'volví a hacerlos sufrir', 'la venganza', 'vamos por 2');
SELECT * FROM post;

-- parte 2
CREATE TABLE comentarios (
    id SERIAL,
    post_id INT,
    createdAt DATE,
    content VARCHAR,
    FOREIGN KEY (post_id) REFERENCES post (id)
);
\dt

INSERT INTO comentarios(post_id, createdAt, content)
VALUES(1, '2021-05-10 15:16:13', 'puras tonteras');
INSERT INTO comentarios(post_id, createdAt, content)
VALUES(1, '2021-05-11 09:34:08', 'muchas mas tonteras');
INSERT INTO comentarios(post_id, createdAt, content)
VALUES(6, '2021-05-11 19:43:56', 'sed');
INSERT INTO comentarios(post_id, createdAt, content)
VALUES(6, '2021-05-12 15:45:18', 'hambre');
INSERT INTO comentarios(post_id, createdAt, content)
VALUES(6,'2021-05-12 18:23:17', 'salida');
INSERT INTO comentarios(post_id, createdAt, content)
VALUES(6,'2021-05-13 12:43:17', 'recontacto');
SELECT * FROM comentarios;

-- post para margarita
INSERT INTO post(userName, creatdAt, content, descripcion, title)
VALUES('Margarita','2021-06-01 13:34:34', 'ya viene', 'la voz', 'patio de usa');
SELECT * FROM post;

INSERT INTO comentarios(post_id, createdAt, content)
VALUES(7,'2021-05-12 12:43:17', 'recordatorio');
INSERT INTO comentarios(post_id, createdAt, content)
VALUES(7,'2021-05-12 12:53:17', 'olvidatorio');
INSERT INTO comentarios(post_id, createdAt, content)
VALUES(7,'2021-05-12 16:45:37', 'me debo acordar que se me debe olvidar');
INSERT INTO comentarios(post_id, createdAt, content)
VALUES(7,'2021-05-12 16:55:17', 'y se me olvido');
INSERT INTO comentarios(post_id, createdAt, content)
VALUES(7,'2021-05-13 01:15:37', 'hasta cuando sigues');
SELECT * FROM comentarios;
