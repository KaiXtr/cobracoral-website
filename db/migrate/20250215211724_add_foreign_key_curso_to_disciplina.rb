class AddForeignKeyCursoToDisciplina < ActiveRecord::Migration[7.0]
  def change
    add_reference :disciplinas, :cursos, null:false, foreign_key: true
  end
end
