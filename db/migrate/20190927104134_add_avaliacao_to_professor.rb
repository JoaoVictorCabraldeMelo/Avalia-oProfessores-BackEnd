class AddAvaliacaoToProfessor < ActiveRecord::Migration[5.2]
  def change
    add_reference :professors, :avaliacao, foreign_key: true
  end
end
