# networkwatcherd
A Linux daemon sends you a notification when a new device is connected to your network


### Installation
You should first have Ruby installed on your computer with Gem.
Download the release from [releases](https://github.com/nemoload/networkwatcherd/releases)
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
-h, --help                       Displays Help
```

```sh
$ networkwatcherd -d 24 -t 10 &
```
You can add it to your startup applications.
