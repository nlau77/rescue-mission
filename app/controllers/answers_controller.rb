class AnswersController < ApplicationController

  def index
  end

  def new
  end

  # def show
  # end

  def create
    @question= Question.find(params[:question_id])
    @answer= Answer.new(answer_params)
    @answer.question = @question

    if @answer.save
      redirect_to question_path(@question)
    else
      flash[:error]=@answer.errors.full_messages.to_sentence
      redirect_to question_path(@question)
    end

  end

  private
  def answer_params
    params.require(:answer).permit(:response)
  end
end
