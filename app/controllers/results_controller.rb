# coding: utf-8
class ResultsController < ApplicationController
  def vote
    @result = Result.new
    @result.user_id = session[:user_id]
    @result.dialog_id = params[:dialog_id]
    @result.question_id = params[:question_id]
    @result.choice_id = params[:choiced_id]
    @result.answer_day = Time.now

    if @result.save
      session[:now_num] = session[:now_num] + 1
      @question = Question.where("dialog_id = :dialog_id",:dialog_id => params[:dialog_id]).order(:num).last
      if session[:now_num].to_i > @question.num
        render :text => "おしまい"
      else
        render :action => "show", :id => @result.id
      end
    else
      redirect_to :controller => "dialogs", :action => "ask", :dialog_id => params[:dialog_id], :question_id => params[:question_id]
    end
  end
  def show
    @result = Result.find(params[:id])
  end
end
