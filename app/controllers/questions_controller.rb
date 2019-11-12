class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /questions
  # GET /questions.json
  def index
    @questions = Question.all
  end

  # GET /questions/1
  # GET /questions/1.json
  def show
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # GET /questions/1/edit
  def edit
  end

  # POST /questions
  # POST /questions.json
  
  def create
    @question = Question.new(question_params)
    saved = @question.save

    if not saved
      respond_to do |format|
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
      return
    end
    puts "printing params"
    puts params[:ans]
    
    params[:ans].each { |a|  
      @answerchoice = Answerchoice.new({ content: a, question_id: @question.id, tally: 0 })
      asaved = @answerchoice.save
      puts "printing asaved"
      puts asaved
      puts @answerchoice.errors.messages
      if not asaved
        @question.destroy
        respond_to do |format|
          format.html { render :new }
          #format.json { render json: @answerchoice.errors, status: :unprocessable_entity }
          format.html { render plain: @answerchoice.errors.messages }
        end
        return
      end
    }
    
    respond_to do |format|
      if saved
        format.html { redirect_to @question, notice: 'Question was successfully created.' }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # PATCH/PUT /questions/1
  # PATCH/PUT /questions/1.json
  def update
    puts "START UPDATE"
    answers = [question_params[:A], question_params[:B], question_params[:C], question_params[:D]]
    question_text = question_params[:text]
    question_params = {text: question_text}
    
    respond_to do |format|
      if @question.update(question_params)
        #format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        #format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
    puts "END UPDATE"
  end

  # DELETE /questions/1
  # DELETE /questions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      #params.require(:question).permit(:text, :answerA, :answerB)
      params.require(:question).permit(:text, :ans)
    end
end
