class SurveysController < ApplicationController
  def index
    render 'index'
  end

  def create
    redirect_to '/result'
  end
  def increment
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] +=1
  end
  def result
    @count = increment

    flash[:notice] = "Thanks for submitting! you've submitted @count times now"
    render "result"
  end
end
