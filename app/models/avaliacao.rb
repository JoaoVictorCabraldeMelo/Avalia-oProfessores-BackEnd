class Avaliacao < ApplicationRecord
    belongs_to :professor
    
    validates :aula, presence: true
    validates :didatica, presence: true
    validates :prova, presence: true
    validates :trabalho, presence: true

end
