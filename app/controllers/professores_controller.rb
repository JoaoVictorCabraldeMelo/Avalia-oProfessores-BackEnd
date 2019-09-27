class ProfessoresController < ApplicationController

    def index
        @professores = Professor.all
        render json: @professores
    end
    
    def show
        @professor = Professor.find(params[:id])
        render json: @professor
    end

    def create
        @professor = Professor.new(
            nome: params[:nome], 
            disciplina: params[:disciplina], 
            departamento: params[:departamento]
        )
        if @professor.save
            render json: "Professor criado com sucesso"
        else
            render json: "Ocorreu um erro"
        end
    end

    def update
        @professor = Professor.find(params[:id])
        @professor = @professor.update(
            nome: params[:nome], 
            disciplina: params[:disciplina], 
            departamento: params[:departamento] 
        )
        render json: "Professor atualizado com sucesso", status: 200
    end
    
    def delete
        @professor = Professor.find(params[:id])
        @professor.delete
        if @professor.delete
            render json: "Professor deletado"
        else
            render json: "Nao foi possivel deletar o professor"
        end
    end

end
