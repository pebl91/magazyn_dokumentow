class Faktury < ApplicationRecord
	
	cattr_accessor :current_user

	validates :user_id, :presence => true

	belongs_to :user

	belongs_to :kontrahenci

	belongs_to :cafemenu
	
	def faktury_model_name
		self.rodzaj_dokumentu
	end
	
	
	
end
