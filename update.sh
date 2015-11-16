#!/bin/bash

git pull
wintersmith build
sudo cp build/* /var/www -r
