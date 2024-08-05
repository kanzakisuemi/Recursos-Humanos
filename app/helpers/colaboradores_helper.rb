module ColaboradoresHelper
  def error_saving_colaborador(colaborador)
    if colaborador.errors.any?
      render partial: 'error/error_saving', locals: { object: colaborador }
    end
  end
end
