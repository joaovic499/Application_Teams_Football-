class ClubesController < ApplicationController
  before_action :set_clube, only: %i[ show edit update destroy ]

  # GET /clubes or /clubes.json
  def index
    @clubes = Clube.all
  end

  # GET /clubes/1 or /clubes/1.json
  def show
  end

  # GET /clubes/new
  def new
    @clube = Clube.new
  end

  # GET /clubes/1/edit
  def edit
  end

  # POST /clubes or /clubes.json
  def create
    @clube = Clube.new(clube_params)

    respond_to do |format|
      if @clube.save
        format.html { redirect_to clube_url(@clube), notice: "Clube was successfully created." }
        format.json { render :show, status: :created, location: @clube }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clube.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clubes/1 or /clubes/1.json
  def update
    respond_to do |format|
      if @clube.update(clube_params)
        format.html { redirect_to clube_url(@clube), notice: "Clube was successfully updated." }
        format.json { render :show, status: :ok, location: @clube }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clube.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clubes/1 or /clubes/1.json
  def destroy
    @clube.destroy

    respond_to do |format|
      format.html { redirect_to clubes_url, notice: "Clube was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clube
      @clube = Clube.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clube_params
      params.require(:clube).permit(:Nome, :Sigla, :Pais, :url_image, :nivel, :jogadors)
    end
end
