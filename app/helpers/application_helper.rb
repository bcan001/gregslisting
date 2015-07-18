module ApplicationHelper
	def show_date(date, long_hand)
		if long_hand == true
			date.strftime("%l:%M%P %Z on %m/%d/%Y ")
		else
			date.strftime("%m/%d/%Y ")
		end
	end
end
