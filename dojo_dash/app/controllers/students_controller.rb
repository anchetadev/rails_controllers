class StudentsController < ApplicationController
  def index
  end

  def new
    @dojo = Dojo.find(params[:dojo_id])
    render 'new'
  end

  def create
    Student.create(first_name:params[:first_name], last_name:params[:last_name], email:params[:email], dojo:Dojo.find(params[:dojo]))
    redirect_to '/dojos'
  end

  def show
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @others = Student.where.not(id: params[:id])
    render 'show'
  end

  def edit
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    @other_d = Dojo.where.not(id:params[:dojo_id])
    render 'edit'
  end

  def update
    @student = Student.find(params[:id])
    @student.update(first_name:params[first_name],last_name:params[:id],email:params[:email], dojo:params[:dojo])
    redirect_to '/dojos'
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to 'dojos'
  end
end
