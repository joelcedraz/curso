class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :autor
      t.text :comentario

      t.timestamps null: false
    end
  end
end
