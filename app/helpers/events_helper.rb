module EventsHelper
	
	 def format_ticket(event)
    if event.free?
      content_tag(:strong, 'Free')
    else
      number_to_currency(event.ticket)
    end
  end
end
