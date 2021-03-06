class User < ApplicationRecord
	belongs_to :company
	belongs_to :department
	has_many :presences

	before_save { self.email = email.downcase }

	validates :first_name, :last_name, :dob, :start_date, presence: true
	
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
			  uniqueness: {case_sensitive: false}, 
	          length: { maximum: 105},
	          format: { with: VALID_EMAIL_REGEX }

	has_secure_password

	def self.search(search)
	    users = all
	  if search
	    where('first_name ILIKE ? OR email ILIKE ?',"%#{search}%", "%#{search}%")
	  else
	    all
	  end
	end

	def full_name
      "#{first_name} #{middle_name}#{" " if middle_name.present?}#{last_name}".titleize   
    end
end
