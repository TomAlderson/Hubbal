class Absence < ActiveRecord::Base

	def self.today
		where(['date_from = ? and date_to = ?', Date.today.beginning_of_day, Date.tomorrow.beginning_of_day])
	end

	def name
		User.where(id: self.user_id).each do |u|
			return "#{u.firstname} #{u.lastname}"
		end
	end

end
