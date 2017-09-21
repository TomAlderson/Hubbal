module ApplicationHelper

	def page(icon,header,description)
		content_for :header do
			header
		end
		content_for :description do
			description
		end
		content_for :icon do
			"<i class='fa fa-#{icon}'></i>".html_safe
		end
	end

	def link_to_icon(options,colour,icon,label)
		"<a #{options}><button class='btn btn-#{colour}'><i class='fa fa-#{icon}'></i> #{label}</button></a>".html_safe
	end

	def nav_link(link,icon,label)
		"<a href='#{link}'><i class='fa fa-#{icon}'></i> <span>#{label}</span></a>".html_safe
	end

	def staff_link(options,colour,icon,label,sub)
		"<li><a style='cursor:pointer;' #{options}><i class='menu-icon fa fa-#{icon} bg-#{colour}'></i><div class='menu-info'><h3 class='control-sidebar-subheading'>#{label}</h3><p>#{sub}</p></div></a></li>".html_safe
	end

end
