#!/bin/bash

SELENIUM="java -jar selenium-server-standalone-2.45.0.jar"
if [ "$1" == "" ];
then
	echo "Usage:"
	echo "run.sh hub|node"
	exit
fi

if [ "$1" == "hub" ];
then
	$SELENIUM -role hub -hubConfig ../config/DefaultHub.json -log ../logs/hub.log > ../logs/selenium_hub_output.log 2>&1 & echo $! > ../logs/selenium.pid &
fi

if [ "$1" == "node" ];
then
	$SELENIUM -role node -nodeConfig ../config/DefaultLinuxDesktop.json -Dwebdriver.chrome.driver=chromedriver > ../logs/selenium_node_output.log 2>&1 & echo $! > ../logs/selenium.pid &
fi
