class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :colaboradores, :sexo, :genero
    change_column_default :colaboradores, :outra_agencia, false
    change_column_default :colaboradores, :afastado, false
  end
end
