class QuestionController < ApplicationController
  def view_all
    @questions = Question.all
  end
  
  def view
    @question = Question.find_by_id(params[:id])		
		if !(@question.nil?)
	    @title =  "Question by #{@question.poster}"
	  end
	end
	
	def ask
	  
  end
  
  def post_ask
    @newQuestion = Question.new
    if !(params[:input][:question].empty?)
      @newQuestion.poster = params[:input][:name]
      @newQuestion.question = params[:input][:question]
      @newQuestion.save
    end
    redirect_to :controller => "question", :action => "view_all"
  end
  
  def post_comment
    @newComment = Comment.new
    if(!params[:comment][:comment].empty?)
      @newComment.comment = params[:comment][:comment]
      @newComment.user_id = session[:id]
      @newComment.question_id = params[:id]
      @newComment.save
    end
    redirect_to :controller => "question", :action => "view", :id => params[:id]
  end
  
end