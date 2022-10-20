#!/bin/sh

running_on_port() {
  lsof -ti:$1;
}


kill_running_on_port() {
	kill -9 $(running_on_port "$1");
}