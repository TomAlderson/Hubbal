class Group < ActiveRecord::Base
	has_many :users

	def leader
		x = User.where(['id = ?', self.leader_id])
		if x.blank?
			"No Leader."
		else
			x.each do |u|
				return u.name
			end
		end
	end

	def users
		User.where(['role = ?', self.id])
	end

	def lessonstoday
		currentday = Date.today.strftime("%A")
		TimetableEntry.where(['timetable_id = ? and day = ?', self.timetable_id, currentday]).each do |t|
			return "<tr><td>#{t.start}</td><td>#{t.course('title')}</td></tr>".html_safe
		end
	end

end     
