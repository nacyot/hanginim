# Hanginim Bot

한기님 Slack 봇

## Installation

### Clone

```
$ git clone https://github.com/nacyot/hanginim.git
$ cd hanginim
```

### Setup

먼저, 슬랙 incoming, outgoing integration 설정 및 환경 변수 설정.

프로젝트 루트의 .env 파일

```
TEAM="docker-korea"
CHANNEL="#bot-test"
NAME="한기님"
INCOMING_TOKEN=""
OUTGOING_TOKEN=""
```

### Run

```
$ bundle install
$ ruby ./bin/run.rb
```
