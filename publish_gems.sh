#!/bin/bash

# render and publish LECS data from website
# use data from the last week
# publish to https://blongworth.github.io/machinelab-work/

QUARTO_PATH=/Applications/quarto/bin/quarto

#$QUARTO_PATH render index.qmd -P start_date:$(date -v-7d "+%Y-%m-%d")
$QUARTO_PATH render index.qmd
$QUARTO_PATH publish gh-pages --no-render --no-prompt --no-browser
