load 'lib/networkwatcherd/version.rb'

Gem::Specification.new do |s|
  s.name        = 'networkwatcherd'
  s.add_runtime_dependency 'libnotify', '~> 0.9', '>= 0.9.1'
  s.version     = Networkwatcherd::VERSION
  s.date        = '2016-05-25'
  s.summary     = "Network devices watcher"
  s.description = "Sends you a notification when another device connect to your network"
  s.authors     = ["Ahmed Khaled"]
  s.email       = 'nemoload@aol.com'
  s.files       = ['lib/networkwatcherd/ipscanner.rb', 'lib/networkwatcherd/networkdevices.rb','lib/networkwatcherd/notification.rb','lib/networkwatcherd/scanner.rb','lib/networkwatcherd.rb','lib/networkwatcherd/version.rb']
  s.executables << 'networkwatcherd'
  s.homepage    =
    'http://github.org/nemoload/networkwatcherd'
  s.license       = 'Apache-2.0'
end
