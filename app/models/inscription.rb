class Inscription < ApplicationRecord

	validates_presence_of :nome, :endereco, :bairro, :local_trabalho, :municipio, :uf, :regime_juridico, :cargo_funcao, :rg, :cpf, :email, :contato, :responsavel
	validates_uniqueness_of :cpf, :rg

	before_save :maiusculas_sem_acentos

  def maiusculas_sem_acentos

    self.nome = ActiveSupport::Inflector.transliterate(self.nome).upcase if !self.nome.blank?

    self.endereco = ActiveSupport::Inflector.transliterate(self.endereco).upcase if !self.endereco.blank?

    self.bairro = ActiveSupport::Inflector.transliterate(self.bairro).upcase if !self.bairro.blank?

    self.local_trabalho = ActiveSupport::Inflector.transliterate(self.local_trabalho).upcase if !self.local_trabalho.blank?

    self.municipio = ActiveSupport::Inflector.transliterate(self.municipio).upcase if !self.municipio.blank?

    self.regime_juridico = ActiveSupport::Inflector.transliterate(self.regime_juridico).upcase if !self.regime_juridico.blank?

    self.cargo_funcao = ActiveSupport::Inflector.transliterate(self.cargo_funcao).upcase if !self.cargo_funcao.blank?

    self.rg = ActiveSupport::Inflector.transliterate(self.rg).upcase if !self.rg.blank?

    self.responsavel = ActiveSupport::Inflector.transliterate(self.responsavel).upcase if !self.responsavel.blank?

  end
end
