class CreatePokemones < ActiveRecord::Migration[8.0]
  def change
    create_table :pokemones do |t|
      t.string :nombre
      t.string :categoria
      t.string :habilidad
      t.string :tipo
      t.string :debilidad

      t.timestamps
    end
  end
end
