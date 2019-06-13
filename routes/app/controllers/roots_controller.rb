class RootsController < ApplicationController
  def index
    render text: 'Hello CodingDojo!'
  end

  def say
    render text: 'Saying hello'
  end

  def hi_joe
    render text: 'Saying Hello Joe!'
  end
  
  def michael
    redirect_to "/say/hello/joe"
  end
  
  def what
    render text: 'What do you want me to say'
  end
  def counter
    @count = increment
    render "say"
  end
  def increment
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] +=1
  end
  def restart
    session.clear
    render text: "sessipon reset"
  end
end
