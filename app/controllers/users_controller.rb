class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end
    
    def show
        @user = User.find(params[:id])
        render json: @users
    end

    def create
        @user = User.new(
            name: params[:name], 
            email: params[:email], 
            password: params[:password], 
            password_confirmation: params[:password_confirmation]
        )
        if @user.save
            render json: "Usuario criado com sucesso"
        else
            render json: "Email ou senha invalido"
        end
    end

    def update
        @user = User.find(params[:id])
        @user = @user.update(
            name: params[:name], 
            email: params[:email], 
            password: params[:password], 
            password_confirmation: params[:password_confirmation]   
        )
        render json: "Usuario atualizado com sucesso", status: 200
    end
    
    def delete
        @user = User.find(params[:id])
        @user.delete
        if @user.delete
            render json: "Usuario deletado"
        else
            render json: "Nao foi possivel deletar o usuario"
        end
    end
    
end
