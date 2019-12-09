class UserchoicesController < ApplicationController
  before_action :set_userchoice, only: [:show, :edit, :update, :destroy]

  # GET /userchoices
  # GET /userchoices.json
  def index
    @userchoices = Userchoice.all
  end

  # GET /userchoices/1
  # GET /userchoices/1.json
  def show
  end

  # GET /userchoices/new
  def new
    @userchoice = Userchoice.new
  end

  # GET /userchoices/1/edit
  def edit
  end

  # POST /userchoices
  # POST /userchoices.json
  def create
    @userchoice = Userchoice.new(userchoice_params)

    respond_to do |format|
      if @userchoice.save
        format.html { redirect_to @userchoice, notice: 'Userchoice was successfully created.' }
        format.json { render :show, status: :created, location: @userchoice }
      else
        format.html { render :new }
        format.json { render json: @userchoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userchoices/1
  # PATCH/PUT /userchoices/1.json
  def update
    respond_to do |format|
      if @userchoice.update(userchoice_params)
        format.html { redirect_to @userchoice, notice: 'Userchoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @userchoice }
      else
        format.html { render :edit }
        format.json { render json: @userchoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userchoices/1
  # DELETE /userchoices/1.json
  def destroy
    @userchoice.destroy
    respond_to do |format|
      format.html { redirect_to userchoices_url, notice: 'Userchoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userchoice
      @userchoice = Userchoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userchoice_params
      params.require(:userchoice).permit(:answerchoice_id, :user_id)
    end
end
