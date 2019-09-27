class Professor < ApplicationRecord
    has_many :avaliacoes

    validates :nome, presence: true
    validates :disciplina, presence: true
    validates :departamento, presence: true
    
end
