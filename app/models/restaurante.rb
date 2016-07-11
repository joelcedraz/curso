class Restaurante < ActiveRecord::Base
	validates_uniqueness_of :nome
	validates_presence_of :nome, :especialidade
	validates_size_of :especialidade, maximum: 40

	has_many :qualificacoes
	has_and_belongs_to_many :pratos

	def primeira_letra_deve_ser_maiuscula 
		errors.add("nome","primeira letra deve ser maiúscula") unless nome =~ /[A-Z].*/
	end

	def valor_total_gasto
		self.qualificacoes.sum(:valor_gasto)
	end

end
