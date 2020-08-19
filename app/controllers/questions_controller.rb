class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to new_question_path, notice: "お問い合わせを送信しました！"
    else
      render :new
    end
  end

  private
  def question_params
    params.require(:question).permit(:name, :email, :content)
  end
end
