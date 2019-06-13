class DojosController < ApplicationController
  def index
    @dojo = Dojo.all
    @num = @dojo.length
    render 'index'
  end
  def new
    render 'new'
  end
  def create
    Dojo.create(branch:params[:branch], street:params[:street], city:params[:city], state:params[:state])
    redirect_to '/dojos'
  end
  def edit
    @dojo = Dojo.find(params[:id])
    render "edit"
  end
  def update
    @dojo = Dojo.find(params[:id])
    @dojo.update(branch:params[:branch], street:params[:street], city:params[:city], state:params[:state])
    redirect_to "/dojos"
  end
  def delete
    @dojo = Dojo.find(params[:id])
    @dojo.destroy
    redirect_to 'dojos'
  end
  def show
    @dojo = Dojo.find(params[:id])
    render 'show'
  end

  
end
