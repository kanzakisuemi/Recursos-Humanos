class Colaborador < ApplicationRecord
  enum etnia: [ :branco, :amarelo, :pardo, :preto, :indígena ]
  enum genero: [ :feminino, :masculino, :outro ]
  enum carga_horaria: [ :oito, :seis, :quatro ]

  validates :nome, :genero, :data_de_nascimento, :etnia, :carga_horaria, presence: true
  validates :nome, length: { minimum: 3, maximum: 100 }
  validates :rg, length: { is: 9 }, if: -> { rg.present? }
  validates :cpf, length: { is: 11 }, if: -> { cpf.present? }
  validate :verify_cpf
  validate :date_is_future?, on: :create

  def verify_cpf
    if cpf.present?
      errors.add(:cpf, I18n.t('errors.messages.invalid')) unless CPF.valid?(cpf)
    end
  end

  def date_is_future?
    errors.add(:data_de_nascimento, I18n.t('errors.messages.invalid')) if data_de_nascimento.present? && data_de_nascimento > Time.zone.today
  end
end
