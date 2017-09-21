class Note < ActiveRecord::Base

	def created_at 
    	self[:created_at].strftime("%d/%m/%Y")
  	end

end
