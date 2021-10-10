/* 1. Tabla de usuarios */
CREATE TABLE IF NOT EXISTS products (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    name text NOT NULL CHECK (name <> ''),  
    relevance integer NOT NULL,
    price varchar(100) NOT NULL UNIQUE,
    makerId INTEGER REFERENCES makers(id));

/* 1.1 Insertar nuevo producto */

INSERT INTO products(name,relevance,price,makerId)
    VALUES('Bluetooth Headphones','3','79€',1)

INSERT INTO products(name,relevance,price,makerId)
    VALUES('Smart TV','4','1.135€',1)

INSERT INTO products(name,relevance,price,makerId)
    VALUES('Smart TV','4','785€',2)

INSERT INTO products(name,relevance,price,makerId)
    VALUES('Wireless Speakers','2','48€',2)



/* 2. Tabla de fabricantes */
CREATE TABLE makers (
    id serial NOT NULL PRIMARY KEY,
    name text NOT NULL CHECK (name <> ''),
    CIF varchar(20) NOT NULL,
    address varchar(100) NOT NULL,
);


/* 2.1 Insertar nuevo fabricante */

INSERT INTO makers(name,CIF,address)
    VALUES('SAMSUNG','A59308114','Parque Empresarial Omeg (avda. Transicion Española), 32 - EDIF. C.')

INSERT INTO makers(name,CIF,address)
    VALUES('LG','A81304487','C. Chile, 1, 28290 Las Rozas de Madrid, Madrid')




/* 3. Tabla de productos */
/* CREATE TABLE products (
    id_product serial NOT NULL PRIMARY KEY,
    name varchar(25) NOT NULL,
    price varchar(25),
    category varchar(30),
    img text,
    id_maker int,
    FOREIGN KEY (id_maker) REFERENCES makers(id_maker)
); */
