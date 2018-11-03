# :book: My Guide

- [DevOps](#devops)
  - Performance
- Jmeter
- [Developing](#developing)
- [FAQ](#faq)
- [Contributors](#contributors)

## :floppy_disk: Installation

### Requirements

* Git
* Docker

### Clone

> Create directory and clone project and enter directory

```shell
$ mkdir -p puntu && git clone git@github.com:puntuapp/web.git puntu/web && cd puntu/web
```

### Configuration

> Add alias to be able to execute commands and after reload bash

```bash
echo -e "\ncompose() { docker-compose run --rm \$@ }" >> ~/.zshrc && exec zsh
```

> Adding a host name in the /etc/hosts file

```bash
echo '\n127.0.0.1 startupx.local' | sudo tee --append /etc/hosts
```

### Setup

> Removes stopped service containers

```shell
docker-compose rm
```

> Build docker images and start containers

```shell
$ docker-compose up --build
```

> Create databases development and test, in other screen.

```shell
$ docker-compose run app rake db:create
```

> Executing migrations for database, in other screen.

```shell
$ docker-compose run app rake db:migrate
```

> Populate your database

```shell
$ docker-compose run app rake db:seed
```

---

## Developing

### Deploying / Publishing

### Commits

[Gitmoji-cli](https://github.com/carloscuesta/gitmoji-cli) solves the hassle of searching through the gitmoji list. Includes a bunch of options you can play with! :tada:

> Install

```bash
$ npm i -g gitmoji-cli
```

> Usage

```bash
$ gitmoji --help
```

```
A gitmoji interactive client for using gitmojis on commit messages.

  Usage
    $ gitmoji
  Options
    --init, -i      Initialize gitmoji as a commit hook
    --remove, -r    Remove a previously initialized commit hook
    --config, -g    Setup gitmoji-cli preferences.
    --commit, -c    Interactively commit using the prompts
    --list, -l      List all the available gitmojis
    --search, -s    Search gitmojis
    --version, -v   Print gitmoji-cli installed version
    --update, -u    Sync emoji list with the repo
```

You can use the commit functionality in two ways, directly or via a commit-hook.

> Client

Start the interactive commit client, to auto generate your commit based on your prompts.

```bash
$ gitmoji -c
```

> Hook

Run the init option, add your changes and commit them, after that the prompts will begin and your commit message will be built.

```bash
$ gitmoji -i # this will create the .git/hook/prepare-commit-msg
$ git add .
$ git commit
```
---

## FAQ

<details>
<summary><b>Problem with gpg?</b></summary><br>

[Generating a GPG key](https://help.github.com/articles/generating-a-new-gpg-key/)

</details>


---

## Contributors

Thanks goes to these wonderful people:

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore -->
| [<img src="https://avatars.githubusercontent.com/u/606570?v=3" width="100px;"/><br /><sub><b>Alan Alves</b></sub>](#)<br /> | [<img src="https://avatars.githubusercontent.com/u/23459234?v=3" width="100px;"/><br /><sub><b>Dario Gondim</b></sub>](#)<br /> | [<img src="https://avatars.githubusercontent.com/u/16357134?v=3" width="100px;"/><br /><sub><b>Gabriel Santos</b></sub>](#)<br /> |
| :-------------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------------------: |
<!-- ALL-CONTRIBUTORS-LIST:END -->


