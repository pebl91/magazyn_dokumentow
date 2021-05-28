class Faktury < ApplicationRecord
	
	has_one	:user

	belongs_to :user

	belongs_to :kontrahenci

	belongs_to :cafemenu
	
	def faktury_model_name
		self.rodzaj_dokumentu
	end
	
	
	
end
