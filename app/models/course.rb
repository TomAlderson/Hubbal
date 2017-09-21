class Course < ActiveRecord::Base

	def name
		return self.title.gsub("-", " ").split.map(&:capitalize).join(' ')
	end

	def teacher
		x = User.where(['id = ?', self.teacher_id])
		if x.blank?
			"No Teacher."
		else
			x.each do |u|
				return u.name
			end
		end
	end

	def self.hours
		TimetableEntry.find_by(course_id: self.id).count
	end

end
