# docker-pwn-ctf

## Build
`docker build -t ctf:ubuntu . `

## Run
`docker run --rm -v $PWD:/pwd --cap-add=SYS_PTRACE -p 1337:1337 --security-opt seccomp=unconfined -d --name ctf -i ctf:ubuntu && docker exec -ti ctf /bin/bash `
