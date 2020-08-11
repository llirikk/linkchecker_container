# linkchecker_container
## Installation
build docker-image:
```sh
  $ ./setup.sh
```
## Usage
create inputfile:
```sh
  $ echo https://www.example.com/ > ./in/input
```
check out and modify config if need:
```sh
  $ less ./conf/linkcheckerrc
```
run container:
```sh
  $ ./run.sh
```
