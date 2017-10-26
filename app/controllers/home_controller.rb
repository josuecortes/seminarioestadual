class HomeController < ApplicationController

  def index
  	@inscription = Inscription.new
  end

  def nao_autorizado
  end

  def comprovante
  	cpf = params[:cpf]
  	@inscription = Inscription.where('cpf = ?', cpf).first

  	if @inscription == nil
  		error = "Não encontramos registros para o CPF informado"
  		redirect_to home_index_path
  	end
  	
  end

  def salvar_inscricao
  	@inscription = Inscription.new(inscription_params)

    respond_to do |format|
      if @inscription.save
        flash[:success] = "Inscrição Realizada com Sucesso!"
        format.html { redirect_to home_comprovante_path(:cpf=>@inscription.cpf) }
        format.json { render :show, status: :created, location: @inscription }
      else
        flash[:danger] = "Erro ao tentar realizar a inscrição!"
        format.html { render :index }
        format.json { render json: @inscription.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def inscription_params
      params.require(:inscription).permit(:nome, :endereco, :bairro, :local_trabalho, :municipio, :uf, :regime_juridico, :cargo_funcao, :rg, :cpf, :email, :contato, :responsavel)
    end

end
