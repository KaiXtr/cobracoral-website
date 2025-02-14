class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.string :nome_completo
      t.string :email
      t.integer :telefone
      t.string :senha

      t.timestamps
    end
  end
end
