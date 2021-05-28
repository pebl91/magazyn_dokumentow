class Cafemenu < ApplicationRecord
mount_uploader :file, CafemenuUploader

  validates :file, :presence => true
  
  def custom_label_method
  "Cefemenu #{Załączniki}"
  end
end
