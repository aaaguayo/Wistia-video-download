# Wistia Video Downloader

## Download

wget https://raw.githubusercontent.com/aaaguayo/Wistia-video-download/main/downloader.sh

## Description

This script allows you to download videos from Wistia by specifying the video ID. It's designed to work on Linux systems and uses common tools such as `wget`, `sed`, `jq`, and `curl`.

## Prerequisites

Before you run the script, ensure you have the following tools installed on your system:
- `wget`
- `sed`
- `jq`
- `curl`

## Make the script executable by running

chmod +x download.sh

## How to get video ID?

Inspect page with the video or check the url:

https://fast.wistia.net/embed/iframe/<VIDEO_ID>?autoplay=0&wmode=transparent

If embedded, inspect the page and search the html for a iframe tag and check src link.

## Running the script 

./download.sh

When prompted, enter the ID of the Wistia video you wish to download.

