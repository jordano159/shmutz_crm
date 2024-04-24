class KensController < ApplicationController
  before_action :set_ken, only: %i[ show edit update destroy ]

  # GET /kens or /kens.json
  def index
    @kens = Ken.all
    @campains = Campain.all
  end

  # GET /kens/1 or /kens/1.json
  def show
    @campains = @ken.campains
  end

  # GET /kens/new
  def new
    @ken = Ken.new
  end

  # GET /kens/1/edit
  def edit
  end

  # POST /kens or /kens.json
  def create
    @ken = Ken.new(ken_params)

    respond_to do |format|
      if @ken.save
        format.html { redirect_to ken_url(@ken), notice: "Ken was successfully created." }
        format.json { render :show, status: :created, location: @ken }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kens/1 or /kens/1.json
  def update
    respond_to do |format|
      if @ken.update(ken_params)
        format.html { redirect_to ken_url(@ken), notice: "Ken was successfully updated." }
        format.json { render :show, status: :ok, location: @ken }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kens/1 or /kens/1.json
  def destroy
    @ken.destroy!

    respond_to do |format|
      format.html { redirect_to kens_url, notice: "Ken was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ken
      @ken = Ken.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ken_params
      params.require(:ken).permit(:name)
    end
end
