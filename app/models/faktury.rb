class Faktury < ApplicationRecord
	has_one :kontrahenci
	belongs_to :kontrahenci
	has_one :cafemenu
	belongs_to :cafemenu
	
	def faktury_model_name
		self.rodzaj_dokumentu
	end
	
	def faktury_time_set
		 update.date
	end

end
