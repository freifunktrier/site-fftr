#!/bin/bash

# validate_site.sh checks if the site.conf is valid lua.dict

GLUON_SITEDIR="." lua5.1 check/site_config.lua
