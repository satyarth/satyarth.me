#!/bin/bash

git pull
wintersmith build
cp build/* /var/www -r
