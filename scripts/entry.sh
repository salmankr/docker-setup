#!/bin/bash
service apache2 start
a2enmod rewrite

tail -f /dev/null
