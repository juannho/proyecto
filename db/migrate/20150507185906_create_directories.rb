class CreateDirectories < ActiveRecord::Migration
  def change
    create_table :directories do |t|
      t.references :user, index: true
      t.references :category, index: true
      t.string :nombre
      t.text :descripcion
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :region
      t.integer :telefono
      t.integer :codigo_area
      t.integer :celular
      t.string :email
      t.string :foto_perfil
      t.string :foto_portada
      t.string :estado
      t.string :layout

      t.timestamps null: false
    end
    add_foreign_key :directories, :users
    add_foreign_key :directories, :categories
  end
end
