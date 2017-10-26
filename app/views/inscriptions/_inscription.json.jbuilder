json.extract! inscription, :id, :nome, :endereco, :bairro, :local_trabalho, :municipio, :uf, :regime_juridico, :cargo_funcao, :rg, :cpf, :email, :contato, :responsavel, :created_at, :updated_at
json.url inscription_url(inscription, format: :json)
