class HoraentregasController < ApplicationController
  before_action :set_horaentrega, only: [:show, :edit, :update, :destroy]

  # GET /horaentregas
  # GET /horaentregas.json
  def index
    @horaentregas = Horaentrega.all
  end

  # GET /horaentregas/1
  # GET /horaentregas/1.json
  def show
  end

  # GET /horaentregas/new
  def new
    @horaentrega = Horaentrega.new
  end

  # GET /horaentregas/1/edit
  def edit
  end

  # POST /horaentregas
  # POST /horaentregas.json
  def create
    @horaentrega = Horaentrega.new(horaentrega_params)

    respond_to do |format|
      if @horaentrega.save
        format.html { redirect_to @horaentrega, notice: 'Horaentrega was successfully created.' }
        format.json { render :show, status: :created, location: @horaentrega }
      else
        format.html { render :new }
        format.json { render json: @horaentrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horaentregas/1
  # PATCH/PUT /horaentregas/1.json
  def update
    respond_to do |format|
      if @horaentrega.update(horaentrega_params)
        format.html { redirect_to @horaentrega, notice: 'Horaentrega was successfully updated.' }
        format.json { render :show, status: :ok, location: @horaentrega }
      else
        format.html { render :edit }
        format.json { render json: @horaentrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horaentregas/1
  # DELETE /horaentregas/1.json
  def destroy
    @horaentrega.destroy
    respond_to do |format|
      format.html { redirect_to horaentregas_url, notice: 'Horaentrega was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horaentrega
      @horaentrega = Horaentrega.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horaentrega_params
      params.require(:horaentrega).permit(:deshora)
    end
end
