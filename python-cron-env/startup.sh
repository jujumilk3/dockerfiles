#!/bin/bash

env >> /etc/environment
supervisord -n
