#!/bin/sh

while uci -q delete wireless.@wifi-iface[0]; do :; done
