SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.
sqlite> 
sqlite> SQLite version 3.8.5 2014-08-15 22:37:57
   ...> Enter ".help" for usage hints.
   ...> 
   ...> ;
Error: near "SQLite": syntax error
sqlite> sqlite3 ejemplo1.db
   ...> ;
Error: near "sqlite3": syntax error
sqlite> CREATE TABLE usuarios (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   nombre VARCHAR(64) NOT NULL,
   ...>   apellido  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   fecha_nacimiento DATETIME NOT NULL,
   ...>   genero VARCHAR(10) NOT NULL
   ...> );
sqlite> .tables
usuarios
sqlite> INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino');
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
sqlite> INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...> ('JUAN', 'CASTILLO', 'ING.PUNDT@GMAIL.COM', '1991-06-06', 'MASCULINO');
sqlite> SELECT * FROM usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero    
----------  ----------  ----------  ----------------  ----------------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino 
2           JUAN        CASTILLO    ING.PUNDT@GMAIL.  1991-06-06        MASCULINO 
sqlite> INSERT INTO usuarios
   ...>  (nombre, apellido, email, fecha_nacimiento, genero)
   ...>  VALUES
   ...>  ('Carlos', 'Ribero', 'carlos@yahoo.com', '1970-11-03', 'masculino');
Error: UNIQUE constraint failed: usuarios.email
sqlite> ALTER TABLE usuarios ADD apodo VARCHAR(64);
sqlite> .SCHEMA
Error: unknown command or invalid arguments:  "SCHEMA". Enter ".help" for help
sqlite> .shema
Error: unknown command or invalid arguments:  "shema". Enter ".help" for help
sqlite> .tables
usuarios
sqlite> .SCHEMA
Error: unknown command or invalid arguments:  "SCHEMA". Enter ".help" for help
sqlite> .schema
CREATE TABLE usuarios (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre VARCHAR(64) NOT NULL,
  apellido  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  fecha_nacimiento DATETIME NOT NULL,
  genero VARCHAR(10) NOT NULL
, apodo VARCHAR(64));
sqlite> select * from usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino             
2           JUAN        CASTILLO    ING.PUNDT@GMAIL.  1991-06-06        MASCULINO             
sqlite> insert into usuarios ('apodo')
   ...> values
   ...> ('car', 'juma');
Error: 2 values for 1 columns
sqlite> update usuarios set apodo = 'car' where id = 1;
sqlite> select * from usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   car       
2           JUAN        CASTILLO    ING.PUNDT@GMAIL.  1991-06-06        MASCULINO             
sqlite> update usuarios set apodo = 'juma' where id = 2;
sqlite> select * from usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   car       
2           JUAN        CASTILLO    ING.PUNDT@GMAIL.  1991-06-06        MASCULINO   juma      
sqlite> update usuarios set apodo = 'charly' where id = 1;
sqlite> select * from usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Ribero      carlos@yahoo.com  1970-11-03        masculino   charly    
2           JUAN        CASTILLO    ING.PUNDT@GMAIL.  1991-06-06        MASCULINO   juma      
sqlite> update usuarios set apellido = 'Rivero', fecha_nacimiento = '1980-11-03' where id = 1;
sqlite> select * from usuarios;
id          nombre      apellido    email             fecha_nacimiento  genero      apodo     
----------  ----------  ----------  ----------------  ----------------  ----------  ----------
1           Carlos      Rivero      carlos@yahoo.com  1980-11-03        masculino   charly    
2           JUAN        CASTILLO    ING.PUNDT@GMAIL.  1991-06-06        MASCULINO   juma      