#!/bin/bash
for SUBREDDIT in $(cat ${BASEDIR}/subreddits); do 
  ( git checkout git@github.com:sharms/reddit-${SUBREDDIT}-data )
done
