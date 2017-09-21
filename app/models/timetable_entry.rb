class TimetableEntry < ActiveRecord::Base

	def timetable
		x = ::Timetable.where(['id = ?', self.timetable_id])
		if x.blank?
			"No Timetable Specified."
		else
			x.each do |t|
				return t.name
			end
		end
	end

	def course(choice)
			x = ::Course.where(['id = ?', self.lesson_id])
			if x.blank?
				"No Course Specified."
			else
				if choice == "title"
					x.each do |c|
						return c.title.gsub("-", " ").split.map(&:capitalize).join(' ')
					end
				elsif choice == "id"
					x.each do |c|
						return c.id
					end
				end
			end
	end

	def self.course_hours(course)
		where(['lesson_id = ?', course]).count
	end

end
