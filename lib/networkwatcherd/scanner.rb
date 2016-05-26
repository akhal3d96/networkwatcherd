require 'networkwatcherd/ipscanner'
require 'networkwatcherd/notification'

class Scanner
	@@default_nd_value = 254
	def initialize (nd=@@default_nd_value)
		@nd = nd
		@ip_old_list = Array.new(@nd)
		@ip_new_list = Array.new(@nd)
		@ip_new_list.fill("")
		@ip_old_list.fill("")
	end

	def scan(ip_pattern="192.168.1",time=300,timeout=50.5) 
		#@ip_old_list ||= Array.new(@nd)
		@ip_old_list = @ip_new_list.map(&:clone)	
		@ip_new_list = Array.new(@nd)
		@ip_new_list.fill("")
		IPScanner.network_devices(@nd,ip_pattern) { |d|
			@ip_new_list[d.value] = d 
		}			#Get the new fags.
		new_fags = []
		(0..@nd).each do |n|	
			if @ip_new_list[n] != "" and @ip_old_list[n] == ""
				new_fags.push(@ip_new_list[n])
			end
		end
			#p new_fags if !new_fags.empty? 
		Notification.send("New Devices",new_fags) if !new_fags.empty?
	end
end

