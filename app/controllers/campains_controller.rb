class CampainsController < ApplicationController
  before_action :set_campain, only: %i[ show edit update destroy ]

  # GET /campains or /campains.json
  def index
    @campains = Campain.all
  end

  # GET /campains/1 or /campains/1.json
  def show
    sort_column = params[:sort] || "created_at"
    sort_direction = params[:direction].presence_in(%w[asc desc]) || "desc"
    @kids = @campain.kids.order("#{sort_column} #{sort_direction}").page(params[:page]).per(10)
  end

  # GET /campains/new
  def new
    @campain = Campain.new
  end

  # GET /campains/1/edit
  def edit
  end

  # POST /campains or /campains.json
  def create
    @campain = Campain.new(campain_params)

    respond_to do |format|
      if @campain.save
        format.html { redirect_to campain_url(@campain), notice: "Campain was successfully created." }
        format.json { render :show, status: :created, location: @campain }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @campain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campains/1 or /campains/1.json
  def update
    respond_to do |format|
      if @campain.update(campain_params)
        format.html { redirect_to campain_url(@campain), notice: "Campain was successfully updated." }
        format.json { render :show, status: :ok, location: @campain }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @campain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campains/1 or /campains/1.json
  def destroy
    @campain.destroy!

    respond_to do |format|
      format.html { redirect_to campains_url, notice: "Campain was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campain
      @campain = Campain.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def campain_params
      params.require(:campain).permit(:name, :year, :script, :notes, :ken_id)
    end
end
