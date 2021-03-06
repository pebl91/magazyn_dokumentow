class Cafemenu < ApplicationRecord
mount_uploader :file, CafemenuUploader
  belongs_to :user
  validates :file, :presence => true
  has_one :faktury
  has_one :kontrahenci
  
  def custom_label_method
  "Cefemenu #{Załącznik}"
  end
end
