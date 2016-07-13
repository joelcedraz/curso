require 'rails_helper'

RSpec.describe Cliente, type: :model do

	it "is valid with a nome and data_nascimento" do
		cliente = build(:cliente)
		expect(cliente).to be_valid
	end

	it "is invalid without a nome" do
		cliente = build(:cliente, nome: nil, 
			data_nascimento: Date.new(1999, 12, 1))
		expect(cliente).not_to be_valid
		expect(cliente.errors[:nome]).to include("can't be blank")
	end


	it "is invalid without a data_nascimento"
	it "is invalid when data_nascimento is before 31/12/1999"
	it "is valid when data_nascimento is after 31/12/1999"
end
