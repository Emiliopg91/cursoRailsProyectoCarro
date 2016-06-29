class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :nombre
      t.decimal :precio, :precision=>5, :scale=>2
      t.string :descripcion
      t.string :imagen

      t.timestamps null: false
    end
  end
end
