class RpgController < ApplicationController
  def index
    render 'casino'
  end
  def farm
    @gold = fincrement
    redirect_to ''
  end

  def cave
    @gold = cavincrement
    redirect_to ''
  end

  def casino
    @gold = casincrement
    redirect_to ''
  end

  def house
    @gold = hincrement
    redirect_to ''
  end
  def fincrement
    if session[:gold].nil?
      session[:gold] = 0
    end
    session[:gold] += 10+rand(20)
  end
  def cavincrement
    if session[:gold].nil?
      session[:gold] = 0
    end
    session[:gold] += 5+rand(10)
  end
  def casincrement
    if session[:gold].nil?
      session[:gold] = 0
    end
    session[:gold] += -50+rand(50)
  end
  def hincrement
    if session[:gold].nil?
      session[:gold] = 0
    end
    session[:gold] += 2+rand(5)
  end
end
