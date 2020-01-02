#!/bin/sh
chmod 400 /my_key
eval `ssh-agent -s`
ssh-add /my_key
git config --global user.name "Cloud Build Bot"
git config --global user.email "cloud-bot@cloud-build.com"
git $@