-- test
CREATE TABLE usuarios (
  id serial PRIMARY KEY,
  nombre VARCHAR(50),
  correo VARCHAR(100)
);

INSERT INTO usuarios (nombre, correo)
VALUES
  ('Usuario1', 'usuario1@example.com'),
  ('Usuario2', 'usuario2@example.com'),
  ('Usuario3', 'usuario3@example.com');