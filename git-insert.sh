#!/bin/bash
git reset --hard $1 && git pull && git cherry-pick $2 && git push
