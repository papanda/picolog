# coding: utf-8
class DialogsController < ApplicationController
  def init
		@dialog = Dialog.find_by_keyword!(params[:keyword])
    @question = @dialog.questions.first

    render :action => "show", :id => @dialog.id
		rescue ActiveRecord::RecordNotFound => e
  		redirect_to :root, :notice => "合言葉があいません。再度入力して下さい。"
  end
  def show
    @dialog = Dialog.find(params[:id])
  end
end
