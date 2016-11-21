class GrupoUsuariosController < ApplicationController
  before_action :set_grupo_usuario, only: [:show, :edit, :update, :destroy]

  # GET /grupo_usuarios
  # GET /grupo_usuarios.json
  def index
    @grupo_usuarios = GrupoUsuario.all
  end

  # GET /grupo_usuarios/1
  # GET /grupo_usuarios/1.json
  def show
  end

  # GET /grupo_usuarios/new
  def new
    @grupo_usuario = GrupoUsuario.new
  end

  # GET /grupo_usuarios/1/edit
  def edit
  end

  # POST /grupo_usuarios
  # POST /grupo_usuarios.json
  def create
    @grupo_usuario = GrupoUsuario.new(grupo_usuario_params)

    respond_to do |format|
      if @grupo_usuario.save
        format.html { redirect_to @grupo_usuario, notice: 'Grupo usuario was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_usuario }
      else
        format.html { render :new }
        format.json { render json: @grupo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_usuarios/1
  # PATCH/PUT /grupo_usuarios/1.json
  def update
    respond_to do |format|
      if @grupo_usuario.update(grupo_usuario_params)
        format.html { redirect_to @grupo_usuario, notice: 'Grupo usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_usuario }
      else
        format.html { render :edit }
        format.json { render json: @grupo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_usuarios/1
  # DELETE /grupo_usuarios/1.json
  def destroy
    @grupo_usuario.destroy
    respond_to do |format|
      format.html { redirect_to grupo_usuarios_url, notice: 'Grupo usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_usuario
      @grupo_usuario = GrupoUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_usuario_params
      params.require(:grupo_usuario).permit(:grupo_avaliacao_id, :usuario_id)
    end
end
