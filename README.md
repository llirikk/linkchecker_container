# LinkcheckerContainer
Container for linkchecker tool. 
## Requirements
Docker>=19.03.12

## Installation
Build docker-image:
```sh
  $ ./setup.sh
```

## Usage
Create inputfile:
```sh
  $ echo https://www.example.com/ > ./in/input
```
Check out and modify config if need:
```sh
  $ less ./conf/linkcheckerrc
```
Run container:
```sh
  $ ./run.sh
```
