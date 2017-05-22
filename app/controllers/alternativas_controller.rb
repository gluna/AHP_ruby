class AlternativasController < ApplicationController
  before_action :set_alternativa, only: [:show, :edit, :update, :destroy]

  # GET /alternativas
  # GET /alternativas.json
  def index
    @alternativas = Alternativa.all
  end

  # GET /alternativas/1
  # GET /alternativas/1.json
  def show
  end

  # GET /alternativas/new
  def new
    @alternativa = Alternativa.new
  end

  # GET /alternativas/1/edit
  def edit
  end

  # POST /alternativas
  # POST /alternativas.json
  def create
    @alternativa = Alternativa.new(alternativa_params)

    respond_to do |format|
      if @alternativa.save
        format.html { redirect_to @alternativa, notice: 'Alternativa was successfully created.' }
        format.json { render :show, status: :created, location: @alternativa }
      else
        format.html { render :new }
        format.json { render json: @alternativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alternativas/1
  # PATCH/PUT /alternativas/1.json
  def update
    respond_to do |format|
      if @alternativa.update(alternativa_params)
        format.html { redirect_to @alternativa, notice: 'Alternativa was successfully updated.' }
        format.json { render :show, status: :ok, location: @alternativa }
      else
        format.html { render :edit }
        format.json { render json: @alternativa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alternativas/1
  # DELETE /alternativas/1.json
  def destroy
    @projeto = Projeto.find(@alternativa.projeto_id)
    @julgamentos = Julgamento.where(:alternativa_id => @alternativa.id)
    @alternativa.destroy
    respond_to do |format|
      format.html { redirect_to @projeto, notice: 'Alternativa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alternativa
      @alternativa = Alternativa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alternativa_params
      params.require(:alternativa).permit(:nome, :codigo, :projeto_id)
    end
end
