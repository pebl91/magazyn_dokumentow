class Cafemenu < ApplicationRecord
mount_uploader :file, CafemenuUploader

  validates :file, :presense => true
  has_one :faktury
  has_one :kontrahenci
  
  def cafemenu_model_name
		self.nazwa
  end
end
