class Cafemenu < ApplicationRecord
mount_uploader :file, CafemenuUploader

  validates :file, :presense => true
  has_one :faktury
  has_one :kontrahenci
  
  def custom_label_method
  "Cefemenu #{Załącznik}"
  end
end