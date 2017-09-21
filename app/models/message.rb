class Message < ActiveRecord::Base

	def sender
		return User.find_by(id: self.sender_id).name
	end

	def recipient
		return User.find_by(id: self.recipent_id).name
	end

	def sender_picture
		return User.find_by(id: self.sender_id).avatar.url
	end

end
