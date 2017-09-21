class LoginActivity < ActiveRecord::Base

	def user
		User.find_by(id: self.person_id)
	end

end
