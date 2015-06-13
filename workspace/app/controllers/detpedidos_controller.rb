class DetpedidosController < ApplicationController
  before_action :set_detpedido, only: [:show, :edit, :update, :destroy]

  # GET /detpedidos
  # GET /detpedidos.json
  def index
    @detpedidos = Detpedido.all
  end

  # GET /detpedidos/1
  # GET /detpedidos/1.json
  def show
  end

  # GET /detpedidos/new
  def new
    @detpedido = Detpedido.new
  end

  # GET /detpedidos/1/edit
  def edit
  end

  # POST /detpedidos
  # POST /detpedidos.json
  def create
    @detpedido = Detpedido.new(detpedido_params)

    respond_to do |format|
      if @detpedido.save
        format.html { redirect_to @detpedido, notice: 'Detpedido was successfully created.' }
        format.json { render :show, status: :created, location: @detpedido }
      else
        format.html { render :new }
        format.json { render json: @detpedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detpedidos/1
  # PATCH/PUT /detpedidos/1.json
  def update
    respond_to do |format|
      if @detpedido.update(detpedido_params)
        format.html { redirect_to @detpedido, notice: 'Detpedido was successfully updated.' }
        format.json { render :show, status: :ok, location: @detpedido }
      else
        format.html { render :edit }
        format.json { render json: @detpedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detpedidos/1
  # DELETE /detpedidos/1.json
  def destroy
    @detpedido.destroy
    respond_to do |format|
      format.html { redirect_to detpedidos_url, notice: 'Detpedido was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detpedido
      @detpedido = Detpedido.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detpedido_params
      params.require(:detpedido).permit(:canped)
    end
end
