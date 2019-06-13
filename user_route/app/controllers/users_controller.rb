class UsersController < ApplicationController
    def index
        render json: User.all
    end
    def new
        render "new"
    end
    def one
        render json: User.find(params[:id])
    end
    def gedit
        @person = User.find(params[:id])
        render "edit"
    end
    def pedit
        @person = User.find(params[:id])
        @person.update(name:params[:name])
        redirect_to "/users"
    end
    def total
        @person = User.all
        render text: @person.length
    end
end

