module ApplicationHelper

	def flash_message
    messages = ""
    [:success, :info, :warning, :danger].each {|type|
      if flash[type]
        messages += "<div class=\"alert alert-#{type} alert-dismissible\"><button type='button' class='close' data-dismiss='alert' aria-label='Fechar'><span aria-hidden='true'>&times;</span></button>#{flash[type]}</div>"
      end
    }

    raw(messages)
  end


	def titulo(titulo)
    html = ""
    html += "<h3>#{titulo}</h3>"
    content_for :titulo do
      raw(html)
    end
  end

  def link_icone(texto)
    case texto
	    when 'detalhes'
	      html="<span class='fa fa-eye'></span>"

	    when 'editar'
	    	html="<span class='fa fa-pencil'></span>"

	    when 'apagar'
	      html="<span class='fa fa-trash'></span>"

	    when 'excluir'
	      html="<span class='fa fa-trash'>Excluir</span>"

	    when 'remover'
	      html="<span class='fa fa-trash'>Remover</span>"

	    when 'desativar'
	      html="<span class='fa fa-remove'> Desativar</span>"

	    when 'salvar'
	      html="<span class='fa fa-hdd'></span>Salvar"

	    when 'voltar'
	      html="<span class='fa fa-arrow-left'></span>"

	    when 'cancelar'
	      html="<span class='fa fa-close'></span> Cancelar"

	    when 'resetar'
	      html="<span class='fa fa-repeat'> Resetar</span>"

	    when 'novo'
	      html="<span class='fa fa-plus'></span>"

	    when 'nova'
	      html="<span class='fa fa-plus'></span>"

	    when 'adicionar'
	      html="<span class='glyphicon glyphicon-plus'></span> Adicionar"

	    when 'ativar'
	      html="<span class='fa fa-ok'>Ativar</span>"

	    when 'pegar'
	      html="<span class='fa fa-smile-o'></span> Tornar-se Responsável"

	    when 'setar'
	      html="<span class='fa fa-reply-all'></span> Setar Tecnico"

	    when 'gerenciar'
	      html="<span class='fa fa-cog'></span> Gerenciar"

	    when 'trilhos'
	      html="<span class='glyphicon glyphicon-cog'></span> Trilhos"

	    when 'relatorios'
	      html="<span class='glyphicon glyphicon-folder-open'></span> Relatórios"

	    when 'enviar'
	      html="<i class='icon-share-alt'</span> Enviar"

	    when 'receber'
	      html="<span class='glyphicon glyphicon-icon-arrow-down'></span> Receber"

	    when 'fechar'
	      html="<span class='fa fa-level-down'></span> Fechar"

	    when 'concluir'
	      html="<span class='fa fa-arrow-right'></span> Concluir"

	    when 'entrada'
	      html="<span class='fa fa-arrow-down'></span> Entrada"

	    when 'saida'
	      html="Saida <span class='fa fa-arrow-right'></span>"

	    when 'etapas'
	      html="<span class='fa fa-tasks'></span>"

	    when 'participantes'
	      html="<span class='fa fa-users'></span>"

	    when 'passageiros'
	      html="<span class='fa fa-users'></span>"

	    when 'arquivos'
	      html="<span class='fa fa-file'></span>"

	    when 'silenciar'
	      html="<span class='fa fa-bell-slash-o'></span>"

	  end

	  return raw(html)
	end

	def link_icone2(texto,texto2)
    case texto
	    when 'detalhes'
	      html="<span class='glyphicon glyphicon-eye-open'></span> "
	      html+= texto2

	    when 'editar'
	      html="<span class='glyph stroked chevron-down'></span> "
	      html+= texto2

	    when 'apagar'
	      html="<span class='glyphicon glyphicon-trash'></span> "
	      html+= texto2

	    when 'excluir'
	      html="<span class='glyphicon glyphicon-trash'></span> "
	      html+= texto2

	    when 'remover'
	      html="<span class='glyphicon glyphicon-trash'></span> "
	      html+= texto2

	    when 'desativar'
	      html="<span class='glyphicon glyphicon-remove'></span> "
	      html+= texto2

	    when 'salvar'
	      html="<span class='glyphicon glyphicon-hdd'></span> "
	      html+= texto2

	    when 'voltar'
	      html="<span class='glyphicon glyphicon-arrow-left'></span> "
	      html+= texto2

	    when 'cancelar'
	      html="<span class='glyphicon glyphicon-refresh'></span> "
	      html+= texto2

	    when 'resetar'
	      html="<span class='glyphicon glyphicon-repeat'></span> "
	      html+= texto2

	    when 'novo'
	      html="<span class='glyphicon glyphicon-plus'>novo</span> "
	      html+= texto2

	    when 'nova'
	      html="<span class='glyphicon glyphicon-plus'>adfadsf</span> "
	      html+= texto2

	    when 'adicionar'
	      html="<span class='glyphicon glyphicon-plus'></span> "
	      html+= texto2

	    when 'ativar'
	      html="<span class='glyphicon glyphicon-ok'></span> "
	      html+= texto2

	    when 'pegar'
	      html="<span class='glyphicon glyphicon-smile-o'></span> "
	      html+= texto2

	    when 'setar'
	      html="<span class='glyphicon glyphicon-reply-all'></span> "
	      html+= texto2

	    when 'gerenciar'
	      html="<span class='glyphicon glyphicon-cog'></span> "
	      html+= texto2

	    when 'trilhos'
	      html="<span class='glyphicon glyphicon-cog'></span> "
	      html+= texto2

	    when 'relatorios'
	      html="<span class='glyphicon glyphicon-folder-open'></span> "
	      html+= texto2

	    when 'enviar'
	      html="<i class='icon-share-alt'</span> "
	      html+= texto2

	    when 'receber'
	      html="<span class='glyphicon glyphicon-icon-arrow-down'></span> "
	      html+= texto2
      
      when 'passageiros'
	      html="<span class='fa fa-plus'></span> "
	      html+= texto2		

	    when 'destinos'
	      html="<span class='fa fa-plus'></span> "
	      html+= texto2	
	     
	    when 'passageiros2'
	      html="<span class='fa fa-plus'></span> <span class='fa fa-users'></span> "
	      html+= texto2		

	    when 'destinos2'
	      html="<span class='fa fa-plus'></span> <span class='fa fa-map'></span> "
	      html+= texto2	

	    when 'requisitar'
	      html="<span class='fa fa-arrow-right'></span> "
	      html+= texto2	
	    
	  end

	  return raw(html)
	end

	def data_br(objeto)
	  if objeto	!= ""
	  	data = "#{objeto.day}/#{objeto.month}/#{objeto.year}"
	    return raw(data)
	  else
	    return raw("")
	  end
	end

	def data_br_completa(objeto)
	  if objeto	!= ""
	  	data = objeto.strftime("%d/%m/%Y %H:%M")
	    return raw(data)
	  else
	    return raw("")
	  end
	end

	def hora_br(objeto)
	  if objeto	!= ""
	  	hora = objeto.to_s(:time)
	  	return raw(hora)
	  else
	    return raw("Nada Cadastrado")
	  end
	end

	def detalhes(objeto)
	  if !objeto.blank?
	    return raw(objeto)
	  else
	    return raw("Nada Cadastrado")
	  end
	end

	def simnao(objeto)
	  if objeto	!= true
	    return raw('NÃO')
	  else
	    return raw("SIM")
	  end
	end

	def detalhes2(objeto,atributo)
	  if !objeto.nil?
	    return objeto.send("#{atributo.to_s}")
	  else
	    return raw("Nada Cadastrado")
	  end
	end

	def icone_permissao(texto)
		html = ""
		case texto
			when 'MASTER'
				html+="MAS "

			when 'ADMINISTRADOR'
				html+="ADM "

			when 'TECNICO'
				html+="TEC "

			when 'REQUISITANTE'
				html+="REQ "



		end

		return raw(html)

	end

	def icone_status(objeto)
		html = ""
		case objeto
			when 'ABERTO'
				html="<span class='label label-success'>ABERTO</span>"

			when 'EM ATENDIMENTO'
				html="<span class='label label-info'>EM ATENDIMENTO</span>"

			when 'FECHADO'
				html="<span class='label label-default'>FECHADO</span>"

			when 'CANCELADO'
				html="<span class='label label-default'>CANCELADO</span>"

			when 'CONCLUIDO'
				html="<span class='label label-warning'>CONCLUIDO</span>"

			when 'AGUARDANDO'
				html="<span class='label label-danger'>AGUARDANDO</span>"

		end

		return raw(html)

	end

	def icone_incidente(objeto)
		html = ""
		case objeto
			when 'ACONTECENDO'
				html="<span class='label label-danger'>ACONTECENDO</span>"

			when 'FINALIZADO'
				html="<span class='label label-default'>FINALIZADO</span>"

		end

		return raw(html)

	end

	def icone_satisfacao(objeto)
		html = ""
		case objeto
			when 4
				html="<span class='label label-success'>OTIMO</span>"

			when 3
				html="<span class='label label-info'>BOM</span>"

			when 2
				html="<span class='label label-default'>NORMAL</span>"

			when 1
				html="<span class='label label-danger'>RUIM</span>"

		end

		return raw(html)

	end

	def status_transporte(objeto)
		html = ""
		case objeto
			when 'EM ABERTO'
				html="<span class='label label-default'>EM ABERTO</span>"
			when 'AGUARDANDO LIBERACAO PELA CAD'
				html="<span class='label label-primary'>AGUARDANDO LIBERAÇÃO PELA CAD</span>"
			when 'AGUARDANDO LIBERACAO PELA USEGET'
				html="<span class='label label-info'>AGUARDANDO LIBERAÇÃO PELA USEGET</span>"
			when 'APROVADA'
				html="<span class='label label-success'>APROVADA</span>"
			when 'EM ANDAMENTO'
				html="<span class='label label-warning'>EM ANDAMENTO</span>"
			when 'CANCELADA'
				html="<span class='label label-danger'>CANCELADA</span>"	
			when 'FINALIZADA'
				html="<span class='label label-default'>FINALIZADA</span>"	
		end
		
		return raw(html)
	
	end


	def icone_tipo_veiculo(objeto)
		html = ""
		case objeto
			when 'PICK-UP'
				html="<i class='fa fa-5x fa-truck' aria-hidden='true'></i>"
			when 'PASSEIO'
				html="<i class='fa fa-5x fa-car' aria-hidden='true'></i>"
			when 'CAMINHAO'
				html="<i class='fa fa-5x fa-truck' aria-hidden='true'></i>"
			when 'MOTOCICLETA'
				html="<i class='fa fa-5x fa-motorcycle' aria-hidden='true'></i>"
			when 'MINI VAN'
				html="<i class='fa fa-5x fa-truck' aria-hidden='true'></i>"
			when 'ONIBUS'
				html="<i class='fa fa-5x fa-bus' aria-hidden='true'></i>"			
		end
		
		return raw(html)
	
	end





	


end
