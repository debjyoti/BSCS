class AnswersController < ApplicationController

  def create 
    params[:answer][:user_id]=current_user.id
    @question = Question.find(params[:question_id])
    respond_to do |format|
      if @question.answers.create(params[:answer])
        @answer = @question.answers.new
        format.html { redirect_to question_path(@question) }
        format.js { @answers = @question.answers }
      end
    end
  end

  def upvote
    @answer = Answer.find(params[:answer_id])
    find_vote =Vote.where("user_id=? and votable_type = 'Answer' and votable_id = ?", current_user.id, @answer.id) 
    if(find_vote.count == 0)
      new_vote = current_user.votes.create(votable_id: @answer.id, votable_type: 'Answer')
      new_vote.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js 
      end
    end
  end

end
