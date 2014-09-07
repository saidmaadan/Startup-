module StartuppsHelper

	def image_for(startupp)
		if @startupp.screenshot.blank?
			image_tag "http://s3-us-west-2.amazonaws.com/saidmfola/startupps/screenshots/000/000/001/medium/Appcubator.png?1409930093"
		else
			image_tag startupp.screenshot.url(:medium)
			# @startupp.screenshot
		end
	end

	def image_f(startupp)
		if startupp.screenshot.blank?
			image_tag "http://s3-us-west-2.amazonaws.com/saidmfola/startupps/screenshots/000/000/001/small/Appcubator.png?1409930093"
		else
			image_tag startupp.screenshot.url(:small)
		end
	end

	def format_average_ratings(startupp)
	  if startupp.average_ratings.nil?
	    content_tag(:strong, 'No reviews')
	  else
	  	content_tag(:color, "*" * startupp.average_ratings.round)
	    #pluralize(number_with_precision(startupp.average_ratings, :precision => 1) , 'rating')
	  end
	end
end
