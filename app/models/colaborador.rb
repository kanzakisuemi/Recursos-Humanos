class Colaborador < ApplicationRecord
  validates :nome, :genero, :data_de_nascimento, :etnia, :deficiencia, :rg, :cpf, :PIS, :outra_agencia, :afastado, :carga_horaria, presence: true
  validate :cpf_valid?

  def cpf_valid?
    return if CPF.valid?(cpf)
    
    errors.add(:cpf)
  end

  enum etnia: [ :branco, :amarelo, :pardo, :preto, :indígena ]
  enum genero: [ :feminino, :masculino, :outro ]
  enum carga_horaria: [ :oito, :seis, :quatro ]
end
