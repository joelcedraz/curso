class Prato < ActiveRecord::Base
	validates_presence_of :nome, message: "Deve ser obrigatório."

	has_and_belongs_to_many :restaurantes
	has_one :receita
end
