class Kontrahenci < ApplicationRecord
	has_many :faktury
	
	def kontrahenci_model_name
		self.nazwa
	end
end
