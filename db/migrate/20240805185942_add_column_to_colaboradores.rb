class AddColumnToColaboradores < ActiveRecord::Migration[7.0]
  def change
    add_column :colaboradores, :motivo_afastamento, :string
  end
end
