class UnosController < ApplicationController
  before_action :set_uno, only: [:show, :edit, :update, :destroy]

  # GET /unos
  # GET /unos.json
  def index
    @unos = Uno.all
  end

  # GET /unos/1
  # GET /unos/1.json
  def show
  end

  # GET /unos/new
  def new
    @uno = Uno.new
  end

  # GET /unos/1/edit
  def edit
  end

  # POST /unos
  # POST /unos.json
  def create
    @uno = Uno.new(uno_params)

    respond_to do |format|
      if @uno.save
        format.html { redirect_to @uno, notice: 'Uno was successfully created.' }
        format.json { render :show, status: :created, location: @uno }
      else
        format.html { render :new }
        format.json { render json: @uno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unos/1
  # PATCH/PUT /unos/1.json
  def update
    respond_to do |format|
      if @uno.update(uno_params)
        format.html { redirect_to @uno, notice: 'Uno was successfully updated.' }
        format.json { render :show, status: :ok, location: @uno }
      else
        format.html { render :edit }
        format.json { render json: @uno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unos/1
  # DELETE /unos/1.json
  def destroy
    @uno.destroy
    respond_to do |format|
      format.html { redirect_to unos_url, notice: 'Uno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uno
      @uno = Uno.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uno_params
      params.require(:uno).permit(:num)
    end
end
