class NetworkDevices
	attr_reader :ip_dn
	def initialize (ip)
		@ip = ip
		@ip_dn = @ip.split(".").at(3).to_i
	end
	def inspect
		@ip
	end
	def value
		@ip_dn
	end
	def <=> (other)
		@ip_dn	<=> other.ip_dn
	end
end

