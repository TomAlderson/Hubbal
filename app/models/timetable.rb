class Timetable < ActiveRecord::Base

	def groups
		::Group.where(['timetable_id = ?', self.id])
	end

	def table(time,day)
			dayname = day.strftime("%A")
			x = ::TimetableEntry.where(['timetable_id = ? and start = ? and day = ?', self.id, time, dayname])
			if x.blank?
				"<td class='text-center'><small>Free</small></td>".html_safe
			else
				x.each do |t|
					return "<td class='text-center' style='color:#DD4B39'><small><a data-url='/timetable_entries/#{t.id}' data-toggle='modal' data-target='#formModal'>Lesson</a></small></td>".html_safe
				end
			end
	end

	def hours_today
		t = TimetableEntry.where(['day = ? and timetable_id = ?', Date.today.strftime("%A"), self.id])
		if t.blank?
			return 0
		else
			return t.count
		end
	end

	def weekly_hours
		return TimetableEntry.where(:timetable_id => self.id).count
	end

end
