class Faktury < ApplicationRecord
	has_one :kontrahenci
	belongs_to :kontrahenci
end
