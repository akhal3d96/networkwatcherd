require 'networkwatcherd/networkdevices'

module IPScanner
	def self.network_devices(nd,ip_pattern)
		(1..nd).each do |n|
			ip = "#{ip_pattern}.#{n}"
			output = `ping -c1 #{ip}`
			data = output.split
			#p data[12]
			if data[12] != "Unreachable"
				device_raw_ip = data[1]
				if device_raw_ip != nil
					device = NetworkDevices.new(device_raw_ip)
					yield device
				end
			end
				#p n
			end

	end
end

