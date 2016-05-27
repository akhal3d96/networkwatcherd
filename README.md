# networkwatcherd
A Linux daemon sends you a notification when a new device is connected to your network


### Installation
You should first have Ruby installed on your computer with Gem.
* You can install it directly from [RubyGems](https://rubygems.org/gems/networkwatcherd)
```sh
$ gem install networkwatcherd
```
* Or download the releases from [releases](https://github.com/nemoload/networkwatcherd/releases)
```sh
$ gem install networkwatcherd.gem
```
### Usage
```sh
$ networkwatcherd -h
Usage: networkwatcherd [options]
-t, --timeout timeout            Notification timeout (Default 50 second)
-d, --number-of-devices devices  Number of addresses to ping (Default 254 )
-s, --sleep sleep           Time between each devices checking (Default 300 s)
-p, --ip-pattern ippattern        (Default 192.168.1) 
-v, --version                    Current version
-h, --help                       Displays Help
```
You can add it to your startup applications.
```sh
$ networkwatcherd -d 24 -t 10 &
```

### TODO

 - Add option ```-n [MESSAGE_HEADER] [OPTIONAL_ICON]``` to control the notifications behaviour.
 - Make ```--no-daemon``` option to just run the application and retrive the current online IPs
 - Get the devices OS type besides their IPs on the network *see [this](http://www.kellyodonnell.com/content/determining-os-type-ping)*
 - Add function to write ```old_ip_list``` to a file to use it in further development as I want to make this application lighter and faster by calling it after a certaim time interval instead of making it run and sleep.
 - Make Arch Linux and Debian/Ubuntu package (Snappy is ok.)
