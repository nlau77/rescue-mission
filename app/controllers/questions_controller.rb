class QuestionsController < ApplicationController
  protect_from_forgery prepend: true

  def index
    @questions= Question.all.order(created_at: :desc)
  end

  def new
    @question= Question.new
  end
  
  def show
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
    @question= Question.find(params[:id])
    @answer= Answer.new
  end

  def create
    @question= Question.new(question_params)
    if @question.save
      redirect_to @question, notice: 'Question was successfully created'
    else
      flash[:error]=@question.errors.full_messages.to_sentence
      render :new
    end
  end

  def destroy
    question= Question.find(params[:id])
    question.answers.destroy_all
    question.destroy
    redirect_to questions_path, notice: 'Question was succesfully deleted'
  end

  def edit
    @question= Question.find(params[:id])
  end

  def update
    @question= Question.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to @question, notice: 'Question was successfully updated'
    else
      flash[:error]=@question.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :detail)
  end
end
