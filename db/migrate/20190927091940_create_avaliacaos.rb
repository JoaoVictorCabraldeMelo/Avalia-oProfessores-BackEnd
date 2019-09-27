class CreateAvaliacaos < ActiveRecord::Migration[5.2]
  def change
    create_table :avaliacaos do |t|
      t.text :aula
      t.text :didatica
      t.text :prova
      t.text :trabalho

      t.timestamps
    end
  end
end
