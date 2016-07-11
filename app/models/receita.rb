class Receita < ActiveRecord::Base
	validates :conteudo, presence: true
	validates_presence_of :prato
	validates_associated :prato

	belongs_to :prato
end
