class GrupoAvaliacaosController < ApplicationController
  before_action :set_grupo_avaliacao, only: [:show, :edit, :update, :destroy]

  # GET /grupo_avaliacaos
  # GET /grupo_avaliacaos.json
  def index
    @grupo_avaliacaos = GrupoAvaliacao.all
  end

  # GET /grupo_avaliacaos/1
  # GET /grupo_avaliacaos/1.json
  def show
  end

  # GET /grupo_avaliacaos/new
  def new
    @grupo_avaliacao = GrupoAvaliacao.new
  end

  # GET /grupo_avaliacaos/1/edit
  def edit
  end

  # POST /grupo_avaliacaos
  # POST /grupo_avaliacaos.json
  def create
    @grupo_avaliacao = GrupoAvaliacao.new(grupo_avaliacao_params)

    respond_to do |format|
      if @grupo_avaliacao.save
        format.html { redirect_to @grupo_avaliacao, notice: 'Grupo avaliacao was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_avaliacao }
      else
        format.html { render :new }
        format.json { render json: @grupo_avaliacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_avaliacaos/1
  # PATCH/PUT /grupo_avaliacaos/1.json
  def update
    respond_to do |format|
      if @grupo_avaliacao.update(grupo_avaliacao_params)
        format.html { redirect_to @grupo_avaliacao, notice: 'Grupo avaliacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_avaliacao }
      else
        format.html { render :edit }
        format.json { render json: @grupo_avaliacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_avaliacaos/1
  # DELETE /grupo_avaliacaos/1.json
  def destroy
    @grupo_avaliacao.destroy
    respond_to do |format|
      format.html { redirect_to grupo_avaliacaos_url, notice: 'Grupo avaliacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_avaliacao
      @grupo_avaliacao = GrupoAvaliacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_avaliacao_params
      params.require(:grupo_avaliacao).permit(:nome, :peso, :projeto_id, :ativo)
    end
end
