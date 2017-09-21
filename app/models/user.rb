class User < ActiveRecord::Base
	has_secure_password
	has_attached_file :avatar, default_url: "/images/missing.png"
  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  	belongs_to :group
  	has_many :login_activities

  	def group
  		Group.where(['id = ?', self.role])
  	end

  	def timetable_id
  		Timetable.where(['user_id = ?', self.id]).each do |t|
  			return t.id
  		end
  	end

	def name
		if self.firstname.blank? and self.lastname.blank?
			return self.username
		else
			"#{self.firstname} #{self.lastname}"
		end
	end

	def status_colour
		if self.status = 0 or self.status.nil?
			"danger"
		elsif self.status = 1
			"info"
		elsif self.status = 2
			"warning"
		elsif self.status = 3
			"default"
		elsif self.status = 4
			"success"
		end
	end

	def level
		self.group.each do |x|
			return x.name
		end
	end

	def status_feedback
		if self.status = 0 or self.status.nil?
			"<i class='fa fa-circle text-danger'></i> Late".html_safe
		elsif self.status = 1
			"<i class='fa fa-circle text-info'></i> Sickness Absence".html_safe
		elsif self.status = 2
			"<i class='fa fa-circle text-warning'></i> Holiday Absence".html_safe
		elsif self.status = 3
			"<i class='fa fa-circle text-default'></i> Free Period".html_safe
		elsif self.status = 4
			"<i class='fa fa-circle text-success'></i> On Schedule".html_safe
		end
	end

	def logs
		LoginActivity.where(['person_id = ?', self.id])
	end

	def employer
		return Group.find_by(id: self.role).leader
	end

end
