class CreateInscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscriptions do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :local_trabalho
      t.string :municipio
      t.string :uf
      t.string :regime_juridico
      t.string :cargo_funcao
      t.string :rg
      t.string :cpf
      t.string :email
      t.string :contato
      t.string :responsavel

      t.timestamps
    end

    add_index :inscriptions, :cpf, unique: true

  end
end
