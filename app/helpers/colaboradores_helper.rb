module ColaboradoresHelper
  def error_saving_colaborador(colaborador)
    if colaborador.errors.any?
      render partial: 'error/error_saving', locals: { object: colaborador }
    end
  end

  def genero_options
    Colaborador.generos.keys.map { |k, v| [k.humanize.capitalize, k] }
  end

  def etnia_options
    Colaborador.etnia.keys.map { |k, v| [k.humanize.capitalize, k] }
  end

  # select(:carga_horaria, options_for_select([["8 horas", "oito"], ["6 horas", "seis"], ["4 horas", "quatro"]], :selected => form.object.carga_horaria))
  def carga_horaria_options
    [["8 horas", "oito"], ["6 horas", "seis"], ["4 horas", "quatro"]]
  end
end
