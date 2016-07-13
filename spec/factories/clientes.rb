FactoryGirl.define do
  factory :cliente do
  	sequence(:nome) {|n| "Cliente#{3}"}
	data_nascimento Date.new(2000, 12, 31)  
  end
end
