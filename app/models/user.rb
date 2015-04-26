class User < ActiveRecord::Base
	# Validates all of those things
	validates :email, :password, :first_name, :last_name, presence: true
	validates :age, numericality: { greater_than_or_equal_to: 0, only_integer: true}

	after_commit :send_email


	
	def send_email
		#send welcome email
		puts "Welcome email sent successfully."
	end

end
