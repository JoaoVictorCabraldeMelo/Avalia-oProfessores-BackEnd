class Professor < ApplicationRecord

    validates :nome, presence: true
    validates :disciplina, presence: true
    validates :departamento, presence: true
    
end
