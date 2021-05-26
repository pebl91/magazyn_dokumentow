class Faktury < ApplicationRecord

	belongs_to :kontrahenci

	belongs_to :cafemenu
	
	def faktury_model_name
		self.rodzaj_dokumentu
	end
	
end
