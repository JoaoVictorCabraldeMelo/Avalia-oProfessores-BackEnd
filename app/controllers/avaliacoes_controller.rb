class AvaliacoesController < ApplicationController

    def index
        @avaliacoes = Avaliacao.all
        render json: @avaliacoes
    end
    
    def show
        @avaliacao = Avaliacao.find(params[:id])
        render json: @avaliacao
    end

    def create
        @avaliacao = Avaliacao.new(
            aula: params[:aula], 
            didatica: params[:didatica], 
            prova: params[:prova],
            trabalho: params[:trabalho]
        )
        if @avaliacao.save
            render json: "Avaliacao criada com sucesso"
        else
            render json: "Ocorreu um erro"
        end
    end

    def update
        @avaliacao = Avaliacao.find(params[:id])
        @avaliacao = @avaliacao.update(
            aula: params[:aula], 
            didatica: params[:didatica], 
            prova: params[:prova],
            trabalho: params[:trabalho]
        )
        render json: "Avaliacao atualizada com sucesso", status: 200
    end
    
    def delete
        @avaliacao = Avaliacao.find(params[:id])
        @avaliacao.delete
        if @avaliacao.delete
            render json: "Avaliacao deletada"
        else
            render json: "Nao foi possivel deletar a avaliacao"
        end
    end

end
