class CreateColaboradores < ActiveRecord::Migration[7.0]
  def change
    create_table :colaboradores do |t|
      t.string :nome
      t.integer :sexo
      t.date :data_de_nascimento
      t.integer :etnia
      t.boolean :deficiencia
      t.string :rg
      t.string :cpf
      t.string :PIS
      t.boolean :outra_agencia
      t.boolean :afastado
      t.integer :carga_horaria

      t.timestamps
    end
  end
end
