class Department < ApplicationRecord
	has_many :users
	belongs_to :company

	validates :name, presence: true, uniqueness: {case_sensitive: false}
	validates :company_id, presence: true
end
