require 'libnotify'

module Notification
	def self.send (summary,new_fags,timeout=50.5)
		#text = new_fags.join(" and ")
		text = ""
		#new_fags.shift
		new_fags.each do |d|
			text+="#{d.inspect}  "
		end
		notification = Libnotify.new do |notify|
			notify.summary    = "Network Watcher"
	  		notify.body       = text 
			notify.timeout    = timeout
			notify.urgency    = :critical
			notify.append     = false
			notify.transient  = true
		end
		notification.show!
	
	end
end
