class JogadorsController < ApplicationController
  layout "adm"
  before_action :set_jogador, only: %i[ show edit update destroy ]
  before_action :set_clube_type_options, only: %i[ new create edit update]

  # GET /jogadors or /jogadors.json
  def index
    @jogadors = Jogador.all
  end

  # GET /jogadors/1 or /jogadors/1.json
  def show
  end

  # GET /jogadors/new
  def new
    @jogador = Jogador.new
  end

  # GET /jogadors/1/edit
  def edit
  end

  # POST /jogadors or /jogadors.json
  def create
    @jogador = Jogador.new(jogador_params)

    respond_to do |format|
      if @jogador.save
        format.html { redirect_to jogador_url(@jogador), notice: "Jogador was successfully created." }
        format.json { render :show, status: :created, location: @jogador }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jogador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jogadors/1 or /jogadors/1.json
  def update
    respond_to do |format|
      if @jogador.update(jogador_params)
        format.html { redirect_to jogador_url(@jogador), notice: "Jogador was successfully updated." }
        format.json { render :show, status: :ok, location: @jogador }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jogador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jogadors/1 or /jogadors/1.json
  def destroy
    @jogador.destroy

    respond_to do |format|
      format.html { redirect_to jogadors_url, notice: "Jogador was successfully destroyed." }
      format.json { head :no_content }
    end
  end
  
  private
    def set_clube_type_options
      @clube_type_options = Clube.all.pluck(:Nome, :id)
    end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jogador
      @jogador = Jogador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jogador_params
      params.require(:jogador).permit(:nome, :nacionalidade, :idade, :posicao, :overall, :url_image, :Clube, :clube, :clube_type_options, :set_clube_type_options, :Clube_id)
    end
  end
