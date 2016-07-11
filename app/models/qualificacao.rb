class Qualificacao < ActiveRecord::Base
	validates_presence_of :nota, :valor_gasto, message: "Deve ser obrigatório."
	validates_numericality_of :valor_gasto, greather_than: 0, message: "Deve ser maior do que zero."
	validates_numericality_of :nota, greather_than: 0, less_than_or_equals: 10, message: "Deve ser zero e dez."
	validates_presence_of :cliente, :restaurante
	validates_associated :cliente, :restaurante

	belongs_to :restaurante
	belongs_to :cliente
end