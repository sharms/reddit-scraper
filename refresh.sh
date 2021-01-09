#!/bin/bash
BASEDIR=$(dirname $0)
for SUBREDDIT in $(cat ${BASEDIR}/subreddits); do
	( cd ../reddit-${SUBREDDIT}-data && git checkout master && git pull )
	# Don't trigger throttling
	sleep $[ ( $RANDOM % 10 ) + 1 ]s
done
