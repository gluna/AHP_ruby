class JulgamentoCriteriosController < ApplicationController
  before_action :set_julgamento_criterio, only: [:show, :edit, :update, :destroy]

  # GET /julgamento_criterios
  # GET /julgamento_criterios.json
  def index
    @julgamento_criterios = JulgamentoCriterio.all
  end

  # GET /julgamento_criterios/1
  # GET /julgamento_criterios/1.json
  def show
  end

  # GET /julgamento_criterios/new
  def new
    @projeto = Projeto.find(params[:projeto_id])

    @criterios1 = @projeto.criterios.all
    @criterios2 = @projeto.criterios.all

    @criterios1.each do |c1|
      @criterios2.each do |c2|

          if JulgamentoCriterio.find_by(:projeto_id => @projeto.id, :criterio_1 => c1.id, :criterio_2 => c2.id) == nil
            @julgamento_criterio = JulgamentoCriterio.new
            @julgamento_criterio.projeto_id = @projeto.id
            @julgamento_criterio.criterio_1_id = c1.id
            @julgamento_criterio.criterio_2_id = c2.id
            @julgamento_criterio.save
          end
      end
    end
    @julgamento_criterios = JulgamentoCriterio.where(:projeto_id => @projeto.id)
  end

  def update_all
    JulgamentoCriterio.update(params[:jc].keys, params[:jc].values)
    prioridade_relativa
  end

  # GET /julgamento_criterios/1/edit
  def edit
  end

  # POST /julgamento_criterios
  # POST /julgamento_criterios.json
  def create
    @julgamento_criterio = JulgamentoCriterio.new(julgamento_criterio_params)

    respond_to do |format|
      if @julgamento_criterio.save
        format.html { redirect_to @julgamento_criterio, notice: 'Julgamento criterio was successfully created.' }
        format.json { render :show, status: :created, location: @julgamento_criterio }
      else
        format.html { render :new }
        format.json { render json: @julgamento_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /julgamento_criterios/1
  # PATCH/PUT /julgamento_criterios/1.json
  def update
    respond_to do |format|
      if @julgamento_criterio.update(julgamento_criterio_params)
        format.html { redirect_to @julgamento_criterio, notice: 'Julgamento criterio was successfully updated.' }
        format.json { render :show, status: :ok, location: @julgamento_criterio }
      else
        format.html { render :edit }
        format.json { render json: @julgamento_criterio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /julgamento_criterios/1
  # DELETE /julgamento_criterios/1.json
  def destroy
    @julgamento_criterio.destroy
    respond_to do |format|
      format.html { redirect_to julgamento_criterios_url, notice: 'Julgamento criterio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_julgamento_criterio
      @julgamento_criterio = JulgamentoCriterio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def julgamento_criterio_params
      params.require(:julgamento_criterio).permit(:projeto_id, :criterio_1_id, :criterio_2_id, :valor)
    end

    def prioridade_relativa
      @criterios = Criterio.all

      @criterios.each do |c1|

          @julgamentos1 = JulgamentoCriterio.where(:projeto_id => params[:projeto_id], :criterio_1 => c1.id)

          total = 0
          @julgamentos1.each do |j|
            @julgamentos2 = JulgamentoCriterio.where(:projeto_id => params[:projeto_id], :criterio_2 => j.criterio_2_id)
            total = total+j.valor/@julgamentos2.sum(:valor)
          end

          c1.update(:prioridade => (total/@julgamentos1.size))

      end

    end


end
