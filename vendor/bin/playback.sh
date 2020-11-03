#! /system/bin/sh
#echo "Playback test"
spk=1
rec=2
mic1=3
mic2=4
playback=5
playback_rcv=6
enable=1
disable=0
open="-Y"
close="-N"
pname_play="tinyplay"
pbname="loopbacktest"

if test $2 -eq $enable
then
	loopbacktest $open "$1" 13
	if test $1 -eq $playback
	then
		tinyplay /vendor/etc/spk_pb.wav
		#pkill -f $pbname
		pkill -f $pname_play
		loopbacktest $close "$1"
	elif test $1 -eq $playback_rcv
	then
		tinyplay /vendor/etc/rcv_pb.wav
		pkill -f $pname_play
		loopbacktest $close "$1"
	fi
elif test $2 -eq $disable
then
	if test $1 -eq $playback -o $1 -eq $playback_rcv
	then
	#pkill -f $pbname
	pkill -f $pname_play
	loopbacktest $close "$1"
	else
	loopbacktest $close "$1"
	fi
else
	echo "input error ctl cmd!"
fi
