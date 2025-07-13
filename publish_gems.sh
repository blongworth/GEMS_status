#!/bin/bash

quarto render index.qmd -P start_date:$(date -v-7d "+%Y-%m-%d")
quarto publish gh-pages --no-render --no-prompt --no-browser
