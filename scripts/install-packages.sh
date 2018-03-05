#!/bin/bash 

set -ex

./pharo Pharo.image eval "

EpMonitor current disable.

Metacello new 
	baseline: 'AtomicClassInstaller';
	repository: 'filetree://./src';
	load.

EpMonitor current enable.

Smalltalk saveAs:'atomicPharoInstaller'.
"