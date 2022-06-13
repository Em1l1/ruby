Crear una referencia

```sh
 rails generate migration AddCategoryToProducts category:references
```

Corremos la migracion

```sh
 rails db:migrate
```

En caso de que exista un error, ejecutamos el siguiente comando

```sh
# reiniciamos la base de datos, desconectar usuario.
rails db:reset
```

Realizar la migracion
```sh
rails db:migrate
```

Cerrar la base de datos

```sh
# user root
sudo -u postgres psql
```

Ver las conexiones existentes en la base de datos

```sh
# dataname="name-database"
SELECT  * FROM pg_stat_activity WHERE datname='db_testing';

____________________________________

 datid  |  datname   | procpid | usesysid | usename  |                        current_query                         | waiting |          xact_start           |          query_start          |         backend_start         |  client_addr  | client_port 
--------+------------+---------+----------+----------+--------------------------------------------------------------+---------+-------------------------------+-------------------------------+-------------------------------+---------------+-------------
 166976 | db_testing |    1952 |   106430 | tad     |                                                         | f       |                               | 2012-03-05 12:16:26.378121+01 | 2012-03-05 12:16:25.962237+01 | 192.168.0.112 |       36493
 166976 | db_testing |    1959 |   106430 | tad     |                                                         | f       |                               | 2012-03-05 12:37:51.801532+01 | 2012-03-05 12:17:51.516567+01 | 192.168.0.112 |       36520
 166976 | db_testing |    1961 |   106430 | tad     |                                                         | f       |                               | 2012-03-05 12:39:51.82745+01  | 2012-03-05 12:17:58.394679+01 | 192.168.0.112 |       36521
 166976 | db_testing |    1962 |   106430 | tad     |                                                         | f       |                               | 2012-03-05 12:18:10.426506+01 | 2012-03-05 12:17:59.696756+01 | 192.168.0.112 |       36523
 166976 | db_testing |    1963 |   106430 | tad     |                                                         | f       |                               | 2012-03-05 12:40:51.836997+01 | 2012-03-05 12:17:59.942576+01 | 192.168.0.112 |       36527
 166976 | db_testing |    1964 |   106430 | tad     |                                                         | f       |                               | 2012-03-05 12:38:51.805679+01 | 2012-03-05 12:18:09.922962+01 | 192.168.0.112 |       36537
 166976 | db_testing |    1965 |   106430 | tad     |                                                         | f       |                               | 2012-03-05 12:41:31.907741+01 | 2012-03-05 12:18:09.963128+01 | 192.168.0.112 |       36538
 166976 | db_testing |    1979 |   106430 | tad     |                                                         | f       |                               | 2012-03-05 12:31:51.732619+01 | 2012-03-05 12:21:30.990653+01 
 
(8 ROWS)
```

Una vez obtenida la lista con los procesos, solo queda utilizar la funcion pg_terminate_backend(procid).

```sh
postres=# SELECT pg_terminate_backend(1952);
 pg_terminate_backend 
----------------------
 t
(1 ROW)
```

[Cerrando conexiones en PostgreSQL](https://www.aradaen.com/sysadmin/tips-y-trucos/cerrando-conexiones-en-postgresql/)

Editamos el modelo

Modelo

file `category.rb`

```ruby
class Category < ApplicationRecord

  # pertenece a varios productos
  has_many :products dependent: :restrict_with_exception
end
```

file `product.rb`

```ruby
class Product < ApplicationRecord
	has_one_attached :photo
	
	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true

  # una sola categoria
	belongs_to :category
end

```

edit `category.yml`

```yml
videogames:
  name: Videojuegos

computers:
  name: Informatica
```

edit `product.yml`

```yml
ps4:
  title: PS4 Fat
  description: PS4 en buen estado
  price: 150
  category: videogames

switch:
  title: Nintendo Switch
  description: Le falla el lector de tarjeta SD
  price: 195
  category: videogames
```

Rellenar la base de datos

```sh
rails db:fixtures:load
```

edit file `products/_form.html.erb`

```erb
	<%= form.collection_select :category_id, Category.all, :id, :name %>
```
