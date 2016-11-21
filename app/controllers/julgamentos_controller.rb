class JulgamentosController < ApplicationController
  before_action :set_julgamento, only: [:show, :edit, :update, :destroy]

  # GET /julgamentos
  # GET /julgamentos.json
  def index
    @julgamentos = Julgamento.all
  end

  # GET /julgamentos/1
  # GET /julgamentos/1.json
  def show
  end

  # GET /julgamentos/new
  def new
    @julgamento = Julgamento.new
  end

  # GET /julgamentos/1/edit
  def edit
  end

  # POST /julgamentos
  # POST /julgamentos.json
  def create
    @julgamento = Julgamento.new(julgamento_params)

    respond_to do |format|
      if @julgamento.save
        format.html { redirect_to @julgamento, notice: 'Julgamento was successfully created.' }
        format.json { render :show, status: :created, location: @julgamento }
      else
        format.html { render :new }
        format.json { render json: @julgamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /julgamentos/1
  # PATCH/PUT /julgamentos/1.json
  def update
    respond_to do |format|
      if @julgamento.update(julgamento_params)
        format.html { redirect_to @julgamento, notice: 'Julgamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @julgamento }
      else
        format.html { render :edit }
        format.json { render json: @julgamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /julgamentos/1
  # DELETE /julgamentos/1.json
  def destroy
    @julgamento.destroy
    respond_to do |format|
      format.html { redirect_to julgamentos_url, notice: 'Julgamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_julgamento
      @julgamento = Julgamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def julgamento_params
      params.require(:julgamento).permit(:usuario_id, :projeto_id, :criterio, :alternativa_id, :alternativa_id, :valor)
    end
end
