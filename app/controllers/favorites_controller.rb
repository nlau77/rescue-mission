class FavoritesController < ApplicationController

  def create
    # binding.pry
    answer = Answer.find(params[:answer_id])
    question=answer.question
    question.answers.each do |answer|
      answer.update_attributes(best_answer: false)
    end
    answer.update_attributes(best_answer:true)
    redirect_to question_path(question)
    # binding.pry
  end

end
