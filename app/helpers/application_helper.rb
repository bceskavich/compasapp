module ApplicationHelper

	def sortable (item, title = nil)
		title ||= item.titleize
		css_class = item == sort_column ? "current" : nil
		direction = item == sort_column && sort_direction == "asc" ? "desc" : "asc"
		link_to title, {:sort => item, :direction => direction}, {:class => css_class}
	end

end
