![Cedrus](https://www.google.com/a/cpanel/cedrus.digital/images/logo.gif?service=google_gsuite)

# Cedrus Training: Bash

Project used to facilitate learning bash.  Level-up your bashing weapons skills!

![Bashing Weapons](images/UglyWindingEidolonhelvum.gif)
*Source: [Gfycat](https://gfycat.com/uglywindingeidolonhelvum-lord-of-the-rings-fighting-swinging)*

## Layout

* `docker`: Dockerfiles for the test playground.
* `scripts`: Demonstration scripts for the commands presented. *Scripts are snippets, not entirely runnable scripts!*
* `docker-compose.yml`: Configuration for the playground.

## Getting Started

This project uses Docker containers to create a test environment to play around in.

0. Ensure you have Docker and Docker Compose installed on your system.
1. Run `docker-compose build` from the top of the project to build the playground.
2. Run `docker-compose up -d && docker-compose run ubuntu bash` to enter the playground.
3. To stop the running instances, run `docker-compose down`

## Outline

*What is Bash*

- Bourne Shell (sh)
- POSIX IEEE standard
- Bourne Again SHell (bash)

*Why Bash*

- Helpful in day-to-day tasks
- Important for understanding your OS
- Application development for containers (LXD, Docker)
- Server administration

*Getting Started*

- Mac / Linux: Good to Go!
- Windows: Git Bash or WSL (Windows Subsystem Linux)
- Docker: docker pull bash

## Level 0: Basic & Builtins

- cat
- cd
- echo (*bonus*: scripts/progress-bar.sh)
- exit
- export / unset
- find / locate
- help
- history
- less / more / tail
- ls
- man
- mkdir
- mv
- ping
- pwd
- read
- rm
- rmdir
- touch
- type
- whereis
- which

## Level 2: Operators & Variables

- Variables
- Parameters
- Arithmetic
- Logical
- IO

## Level 3: Control Flow & Functions

- while, for, if/else
- Functions

## Level 4: Configuration & Advanced Commands

- alias
- .bashrc / .profile
    - Create aliases for common commands, set up environment variable values
    - Use .bashrc for commands, aliases, and environment vars specific to bash
    - Use .profile for non-bash environment vars, is POSIX compatible, and executed upon login
- diff
- grep
- rsync
- sed
- scp
- ssh
- xargs

## The Arena!

What commands or bash knowledge do you find helpful?

A few from Session 1
* [ExplainShell](https://explainshell.com/)
* [lsof](https://linux.die.net/man/8/lsof)
* [ps](https://linux.die.net/man/1/ps)
* [awk](https://linux.die.net/man/1/awk)

## Helpful Links

* [Docker](https://docs.docker.com/install/)
* [Docker Compose](https://docs.docker.com/compose/install/)
* [Bash](http://www.tldp.org/LDP/abs/html/)
* [POSIX](https://en.wikipedia.org/wiki/POSIX)
* [Bourne Shell (sh)](https://en.wikipedia.org/wiki/Bourne_shell)
* [Bourne Again Shell (bash)](https://en.wikipedia.org/wiki/Bash_(Unix_shell))

## Author(s)

* Matt Johnson (src-system42)

## Copyright

MIT (c) 2019 Cedrus, LLC