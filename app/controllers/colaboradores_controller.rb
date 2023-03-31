class ColaboradoresController < ApplicationController
  before_action :set_colaborador, only: %i[ show edit update destroy ]
  before_action :desformatando, only: %i[ create update ]

  # GET /homepage
  def homepage
  end

  # GET /colaboradores or /colaboradores.json
  def index
    @colaboradores = Colaborador.all
  end

  # GET /colaboradores/1 or /colaboradores/1.json
  def show
  end

  # GET /colaboradores/new
  def new
    @colaborador = Colaborador.new
  end

  # GET /colaboradores/1/edit
  def edit
  end

  # POST /colaboradores or /colaboradores.json
  def create
    @colaborador = Colaborador.new(colaborador_params)

    respond_to do |format|
      if @colaborador.save
        format.html { redirect_to colaborador_url(@colaborador), notice: "Colaborador resgistrado com sucesso." }
        format.json { render :show, status: :created, location: @colaborador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @colaborador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colaboradores/1 or /colaboradores/1.json
  def update
    respond_to do |format|
      if @colaborador.update(colaborador_params)
        format.html { redirect_to colaborador_url(@colaborador), notice: "Colaborador editado com sucesso." }
        format.json { render :show, status: :ok, location: @colaborador }
      # else
      #   format.html { render :edit, status: :unprocessable_entity }
      #   format.json { render json: @colaborador.errors, status: :unprocessable_entity }
      # end
      else
        binding.pry
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colaboradores/1 or /colaboradores/1.json
  def destroy
    @colaborador.destroy

    respond_to do |format|
      format.html { redirect_to colaboradores_url, notice: "Colaborador deletado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colaborador
      @colaborador = Colaborador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def colaborador_params
      params.require(:colaborador).permit(:nome, :genero, :data_de_nascimento, :etnia, :deficiencia, :rg, :cpf, :PIS, :outra_agencia, :afastado, :carga_horaria)
    end

    def desformatando
      params[:colaborador][:rg] = CPF.new(params[:colaborador][:rg]).stripped
      params[:colaborador][:cpf] = CPF.new(params[:colaborador][:cpf]).stripped
      params[:colaborador][:PIS] = CPF.new(params[:colaborador][:PIS]).stripped
    end

end