# Hanginim Bot

한기님 Slack 봇

## Installation

```
$ docker pull nacyot/hanginim
$ docker run -it \
    -e TEAM="<TEAM_NAME>" \
    -e CHANNEL="#<CHANNEL_NAME>" \
    -e NAME="<BOT_NAME>" \
    -e INCOMING_TOKEN="<YOUR_TOKEN>" \
    -e OUTGOING_TOKEN="<YOUR_TOKEN>" \
    -p 4567:4567 \
    --name hanginim \
    nacyot/hanginim 
```

### Usage

1. prefix는 Slack에서 설정
1. prefix ping => pong
1. prefix 핑 => 퐁
1. prefix profile
1. prefix remotty
1. prefix 리모티
1. prefix 어록
1. prefix 한기님

