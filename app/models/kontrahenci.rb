class Kontrahenci < ApplicationRecord
	belongs_to :user
	def kontrahenci_model_name
		self.nazwa
	end
end