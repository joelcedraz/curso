class Cliente < ActiveRecord::Base
	validates :nome, presence: true
	validates :nome, length: { maximum: 50 }
	validate :deve_ser_nascido_antes_de_2000
	has_many :qualificacoes

	private
		def deve_ser_nascido_antes_de_2000
			errors.add("data_nascimento", "Deve ser anterior a 31/12/1999") unless data_nascimento < Date.new(1999, 12, 31)
		end
end
