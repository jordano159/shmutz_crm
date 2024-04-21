class SignUpsController < ApplicationController
  before_action :set_sign_up, only: %i[ show edit update destroy ]

  # GET /sign_ups or /sign_ups.json
  def index
    @sign_ups = SignUp.all
  end

  # GET /sign_ups/1 or /sign_ups/1.json
  def show
  end

  # GET /sign_ups/new
  def new
    @sign_up = SignUp.new
  end

  # GET /sign_ups/1/edit
  def edit
  end

  # POST /sign_ups or /sign_ups.json
  def create
    @sign_up = SignUp.new(sign_up_params)

    respond_to do |format|
      if @sign_up.save
        format.html { redirect_to sign_up_url(@sign_up), notice: "SignUp was successfully created." }
        format.json { render :show, status: :created, location: @sign_up }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sign_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_ups/1 or /sign_ups/1.json
  def update
    respond_to do |format|
      if @sign_up.update(sign_up_params)
        format.html { redirect_to sign_up_url(@sign_up), notice: "SignUp was successfully updated." }
        format.json { render :show, status: :ok, location: @sign_up }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sign_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_ups/1 or /sign_ups/1.json
  def destroy
    @sign_up.destroy!

    respond_to do |format|
      format.html { redirect_to sign_ups_url, notice: "SignUp was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use sign_upbacks to share common setup or constraints between actions.
    def set_sign_up
      @sign_up = SignUp.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sign_up_params
      params.require(:sign_up).permit(:date, :notes, :kid_id, :campain_id)
    end
end
