module ApplicationHelper

	def novo_comentario(comentavel)
		render partial: "comentarios/novo_comentario",locals: {comentavel: comentavel}
	end
	
	def novo_qualificacao(restaurante)
		render partial: "qualificacoes/novo_qualificacao", locals: {restaurante: restaurante}
	end
end
