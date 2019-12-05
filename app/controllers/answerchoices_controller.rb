class AnswerchoicesController < ApplicationController
  before_action :set_answerchoice, only: [:show, :edit, :update, :destroy]

  # GET /answerchoices
  # GET /answerchoices.json
  def index
    @answerchoices = Answerchoice.all
  end

  # GET /answerchoices/1
  # GET /answerchoices/1.json
  def show
  end

  # GET /answerchoices/new
  def new
    @answerchoice = Answerchoice.new
  end

  # GET /answerchoices/1/edit
  def edit
  end

  # POST /answerchoices
  # POST /answerchoices.json
  def create
    @answerchoice = Answerchoice.new(answerchoice_params)

    respond_to do |format|
      if @answerchoice.save
        format.html { redirect_to @answerchoice, notice: 'Answerchoice was successfully created.' }
        format.json { render :show, status: :created, location: @answerchoice }
      else
        format.html { render :new }
        format.json { render json: @answerchoice.errors, status: :unprocessable_entity }
      end
    end
  end
  helper_method :vote
  def vote
    #tally = tally + 1
    @answerchoice = Answerchoice.find(params[:id])
    @answerchoice.increment!(:tally)
    puts @answerchoice.question.poll.id
    redirect_to @answerchoice.question.poll
    #redirect_to answerchoice_url(@answerchoice)
  end
  # PATCH/PUT /answerchoices/1
  # PATCH/PUT /answerchoices/1.json
  def update
    respond_to do |format|
      if @answerchoice.update(answerchoice_params)
        format.html { redirect_to @answerchoice, notice: 'Answerchoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @answerchoice }
      else
        format.html { render :edit }
        format.json { render json: @answerchoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answerchoices/1
  # DELETE /answerchoices/1.json
  def destroy
    @answerchoice.destroy
    respond_to do |format|
      format.html { redirect_to answerchoices_url, notice: 'Answerchoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answerchoice
      @answerchoice = Answerchoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answerchoice_params
      params.require(:answerchoice).permit(:content, :question_id, :tally)
    end
end
