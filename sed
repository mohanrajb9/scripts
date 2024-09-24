#!/bin/sh

sed 's/:.*//' ./passwd | sort -u
