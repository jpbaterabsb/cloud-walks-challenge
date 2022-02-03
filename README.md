# CloudWalks Challenge - João Paulo Oliveira Santos - desenvolvedorjoaopaulo@gmail.com

## Introduction

The goal of this challenge is read file then convert to json using certain template.

## Requirements

For running that application you must install following tools:

- [Ruby](https://www.ruby-lang.org/pt/downloads/) >= 2.6



### Configure Project

1. Clone this repository.



### TEMPLATES

#### DEFAULT

Default template will format log in something like below json:

```json
"game_1": {
"total_kills": 45,
"players": ["Dono da bola", "Isgalamido", "Zeh"],
"kills": {
  "Dono da bola": 5,
  "Isgalamido": 18,
  "Zeh": 20
  }
}
```

#### GROUP_BY_KILL

GROUP_BY_KILL template will format log in something like below json:

```json
"game-1": {
    "kills_by_means": {
    "MOD_SHOTGUN": 10,
    "MOD_RAILGUN": 2,
    "MOD_GAUNTLET": 1
    }
}
```

### Run application

For executing this application you need to understand CLI:

Note: All commands should be executed from <b>root path</b> of this project.


template command line:
```shell
    ruby application.rb  $$LOG_PATH$$ $$JSON_PATH$$ $$TEMPLATE$$
```

Example
```shell
    ruby application.rb  log.file default.json DEFAULT
```
