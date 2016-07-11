class CreatePratos < ActiveRecord::Migration
  def change
    create_table :pratos do |t|
      t.string :nome, null: false

      t.timestamps null: false
    end
  end
end
