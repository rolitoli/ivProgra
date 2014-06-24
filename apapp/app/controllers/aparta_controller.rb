class ApartaController < ApplicationController
  before_action :set_apartum, only: [:show, :edit, :update, :destroy]

  # GET /aparta
  # GET /aparta.json
  def index
    @aparta = Apartum.all
  end

  # GET /aparta/1
  # GET /aparta/1.json
  def show
  end

  # GET /aparta/new
  def new
    @apartum = Apartum.new
  end

  # GET /aparta/1/edit
  def edit
  end

  # POST /aparta
  # POST /aparta.json
  def create
    @apartum = Apartum.new(apartum_params)

    respond_to do |format|
      if @apartum.save
        format.html { redirect_to @apartum, notice: 'Apartum was successfully created.' }
        format.json { render :show, status: :created, location: @apartum }
      else
        format.html { render :new }
        format.json { render json: @apartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aparta/1
  # PATCH/PUT /aparta/1.json
  def update
    respond_to do |format|
      if @apartum.update(apartum_params)
        format.html { redirect_to @apartum, notice: 'Apartum was successfully updated.' }
        format.json { render :show, status: :ok, location: @apartum }
      else
        format.html { render :edit }
        format.json { render json: @apartum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aparta/1
  # DELETE /aparta/1.json
  def destroy
    @apartum.destroy
    respond_to do |format|
      format.html { redirect_to aparta_url, notice: 'Apartum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apartum
      @apartum = Apartum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apartum_params
      params.require(:apartum).permit(:titulo, :descripcion, :ubicacion, :costo, :contacto)
    end
end
