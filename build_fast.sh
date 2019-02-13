#!/bin/bash

if [ ! -f .env ]; then
  sh config_env.sh
fi

sh pg-start.sh

sh kill_spring.sh
sh all.sh
