# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

gestor de base de datos

[Postico y es para Mac, si no tienes Mac puedes bajarte Postbird](https://github.com/Paxa/postbird/releases)

[beekeeper-studio](https://www.beekeeperstudio.io/)

Validar los campos de formulario

```sh
rails generate migration addNullFalseToProductFields
```
file `products_controlles.rb`

```ruby
	def create
		@product = Product.new(product_params)

		if @product.save
			redirect_to products_path
		else
			render :new, status: :unprocessable_entity
		end
	end
```

file `new.html.erb`

Crear un objecto sin titulo, description o precio, nos lanzar un mesaje de error. 

- [x] Completar los datos.
- [x] Deben completarse los campos vacios para enviar el formulario.

```html
	<% @product.errors.full_messages.each do |error| %>
	<div>
		<%= error %>
	</div>
	<% end %>
```

Establecer que los inputs no esten vacios en html-backend, para que funcione en la base de datos. Crear una migracion con las siguientes especificaciones

```rb
class AddNullFalseToProductFields < ActiveRecord::Migration[7.0]
  def change
    change_column_null :products, :title, false
    change_column_null :products, :description, false
    change_column_null :products, :price, false
  end
end
```

Al definir la configuracion, ejecuatamos la migracion

```sh
rails db:migrate
```

error o pgadmin use
[solution error god linux](https://medium.com/@tessywangari05/oserror-errno-98-address-already-in-use-flask-error-ccbff65e2bb5)

