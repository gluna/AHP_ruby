class GrupoCriteriosController < ApplicationController
  before_action :set_grupo_criterio, only: [:show, :edit, :update, :destroy]

  # GET /grupo_criterios
  # GET /grupo_criterios.json
  def index
    @grupo_criterios = GrupoCriterio.all
  end

  # GET /grupo_criterios/1
  # GET /grupo_criterios/1.json
  def show
  end

  # GET /grupo_criterios/new
  def new
    @grupo_criterio = GrupoCriterio.new
  end

  # GET /grupo_criterios/1/edit
  def edit
  end

  # POST /grupo_criterios
  # POST /grupo_criterios.json
  def create
    @grupo_criterio = GrupoCriterio.new(grupo_criterio_params)

    respond_to do |format|
      if @grupo_criterio.save
        format.html { redirect_to @grupo_criterio, notice: 'Grupo criterio was successfully created.' }
        format.json { render :show, status: :created, location: @grupo_criterio }
      else
        format.html { render :new }
        format.json { render json: @grupo_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grupo_criterios/1
  # PATCH/PUT /grupo_criterios/1.json
  def update
    respond_to do |format|
      if @grupo_criterio.update(grupo_criterio_params)
        format.html { redirect_to @grupo_criterio, notice: 'Grupo criterio was successfully updated.' }
        format.json { render :show, status: :ok, location: @grupo_criterio }
      else
        format.html { render :edit }
        format.json { render json: @grupo_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grupo_criterios/1
  # DELETE /grupo_criterios/1.json
  def destroy
    @grupo_criterio.destroy
    respond_to do |format|
      format.html { redirect_to grupo_criterios_url, notice: 'Grupo criterio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grupo_criterio
      @grupo_criterio = GrupoCriterio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grupo_criterio_params
      params.require(:grupo_criterio).permit(:nome, :peso)
    end
end
