class KidsController < ApplicationController
  before_action :set_kid, only: %i[ show edit update destroy ]

  # GET /kids or /kids.json
  def index
    sort_column = params[:sort] || "created_at"
    sort_direction = params[:direction].presence_in(%w[asc desc]) || "desc"
    @kids = Kid.order("#{sort_column} #{sort_direction}").page(params[:page]).per(10)
  end

  # GET /kids/1 or /kids/1.json
  def show
  end

  # GET /kids/new
  def new
    @kid = Kid.new
  end

  # GET /kids/1/edit
  def edit
  end

  # POST /kids or /kids.json
  def create
    @kid = Kid.new(kid_params)

    respond_to do |format|
      if @kid.save
        if params[:current_campain].present?
          format.html { redirect_to campain_path(params[:current_campain]), notice: "Kid was successfully created." }
        else
          format.html { redirect_to kid_url(@kid), notice: "Kid was successfully created." }
          format.json { render :show, status: :created, location: @kid }
        end
      else
        params[:campain] = params[:current_campain]
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kids/1 or /kids/1.json
  def update
    respond_to do |format|
      if @kid.update(kid_params)
        format.html { redirect_to kid_url(@kid), notice: "Kid was successfully updated." }
        format.json { render :show, status: :ok, location: @kid }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kids/1 or /kids/1.json
  def destroy
    @kid.destroy!

    respond_to do |format|
      format.html { redirect_to kids_url, notice: "Kid was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kid
      @kid = Kid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kid_params
      params.require(:kid).permit(:name, :phone, :grade, :status, :notes, campain_ids: [])
    end
end
