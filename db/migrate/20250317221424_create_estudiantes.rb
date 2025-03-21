class CreateEstudiantes < ActiveRecord::Migration[8.0]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :colegio
      t.string :email
      t.integer :documento

      t.timestamps
    end
  end
end
