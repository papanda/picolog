# coding: utf-8
class DialogsController < ApplicationController
  def init
		@dialog = Dialog.find_by_keyword!(params[:keyword])
    @question = @dialog.questions.first
    session[:now_num] = nil
    session[:now_num] = @question.num

    render :action => "show", :id => @dialog.id
		rescue ActiveRecord::RecordNotFound => e
  		redirect_to :root, :notice => "合言葉があいません。再度入力して下さい。"
  end
  def ask
    @dialog = Dialog.find_by_id(params[:dialog_id])
    if session[:now_num].to_i > params[:question_id].to_i
      @question = @dialog.questions.where(:num => session[:now_num]).first
    else
      @question = @dialog.questions.where(:num => params[:question_id]).first
    end
    render :action => "show", :id => @dialog.id
  end
  def show
    @dialog = Dialog.find_by_id(params[:id])
  end
end
