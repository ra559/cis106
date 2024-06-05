---
layout: post
title: Install NodeJS
---

# How to install NodeJS and NPM in Ubuntu
* Sources: 
  * [Digital Ocean](https://rapurl.live/e7m)
  * [NVM Cheat Sheet](https://rapurl.live/92n)
  * [NPX Cheat Sheet](https://rapurl.live/co7)
  * [NPM Cheat sheet](https://devhints.io/npm)
  * [NPM VS NPX](https://rapurl.live/3jz)
  * [React cheat sheet](https://devhints.io/react)
  * [JS Cheat Sheet](https://htmlcheatsheet.com/js/)

> This was tested on Ubuntu 22.04 and 24.04

## Installation
The Digital Ocean article discusses multiple ways of getting this done. I prefer using node version manager because it allows me to have more than 1 version.

1. Run this command:

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh
```

2. If it does not return an error repeat the command and pipe it to bash

```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash && source $HOME/.bashrc
```

3. Now check which versions of node are avaialable:

```bash
nvm list-remote
```

4. Basic nvm commands:

## Basic Syntax of Node Version Manager

| Command                          | Description                                                                                                            |
| -------------------------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `nvm ls-remote`                  | Lists all available versions of Node                                                                                   |
| `nvm ls`                         | Lists all locally installed versions                                                                                   |
| `nvm install node`               | Installs the newest release of Node                                                                                    |
| `nvm install <version>`          | Installs the given release of Node                                                                                     |
| `nvm use <version>`              | Switches and uses the given Node release                                                                               |
| `nvm which <version>`            | Shows path to the given Node version                                                                                   |
| `nvm current`                    | Shows what is the currently used Node version                                                                          |
| `nvm alias default <version>`    | Sets the default Node version to the given version                                                                     |
| `nvm unalias <alias_name>`       | Deletes the alias named <alias_name>                                                                                   |
| `nvm --help`                     | Shows NVM help documents.                                                                                              |
| `nvm exec <version> node app.js` | Run Node app.js with the PATH pointing to given node version                                                           |
| `nvm set-colors cgYmW`           | Set text colors to cyan, green, bold yellow, magenta, and white                                                        |
| `nvm run <version> app.js`       | Run app.js using given Node version                                                                                    |
| `nvm install-latest-npm`         | Update your version of npm if you use Node installed through nvm                                                       |
| `nvm root <path>`                | Set the directory where nvm should store different versions of node.js.                                                |
| `nvm proxy [url]`                | Set a proxy to use for downloads. Leave [url] blank to see the current proxy. Set [url] to "none" to remove the proxy. |
| `nvm -v`                         | Check if nvm is installed                                                                                              |
| `nvm uninstall <version>`        | Un-Install a specific version                                                                                          |
| `nvm ls`                         | Show versions available locally                                                                                        |
| `nvm uninstall --lts`            | Uninstall the latest long term support version                                                                         |


## NPM VS NPX

### NPM
* The npm stands for Node Package Manager and it is the default package manager for Node.js. 
* It is written entirely in JavaScript, developed by  Isaac Z. Schlueter. 
* NPM manages all the packages and modules for node.js and consists of command-line client `npm`. 
### Cheat cheat

| Command                                                          | Description                                                       |
| ---------------------------------------------------------------- | ----------------------------------------------------------------- |
| `npm i `                                                         | Alias for npm install                                             |
| `npm install`                                                    | Install everything in package.json                                |
| `npm install --production`                                       | Install everything in package.json, except devDependecies         |
| `npm install lodash`                                             | Install a package                                                 |
| `npm install --save-dev lodash`                                  | Install as devDependency                                          |
| `npm install --save-exact lodash`                                | Install with exact                                                |
| `npm list`                                                       | Lists the installed versions of all dependencies in this software |
| `npm list -g --depth 0`                                          | Lists the installed versions of all globally installed packages   |
| `npm view`                                                       | Lists the latest versions of all dependencies in this software    |
| `npm outdated`                                                   | Lists only the dependencies in this software which are outdated   |
| `npm update`                                                     | Update production packages                                        |
| `npm update --dev`                                               | Update dev packages                                               |
| `npm update -g`                                                  | Update global packages                                            |
| `npm update lodash`                                              | Update a package                                                  |
| `npm rm lodash`                                                  | Remove package production packages                                |
| `npm i sax`                                                      | NPM package                                                       |
| `npm i sax@latest`                                               | Specify tag latest                                                |
| `npm i sax@3.0.0`                                                | Specify version 3.0.0                                             |
| `npm i sax@">=1 <2.0"`                                           | Specify version range                                             |
| `npm i @org/sax`                                                 | Scoped NPM package                                                |
| `npm i user/repo`                                                | GitHub                                                            |
| `npm i user/repo#master`                                         | GitHub                                                            |
| `npm i github:user/repo`                                         | GitHub                                                            |
| `npm i gitlab:user/repo`                                         | GitLab                                                            |
| `npm i /path/to/repo`                                            | Absolute path                                                     |
| `npm i ./archive.tgz`                                            | Tarball                                                           |
| `npm i https://site.com/archive.tgz`                             | Tarball via HTTP                                                  |
| `npm version 1.2.3`                                              | Bump the package version to 1.2.3                                 |
| `npm version major`                                              | Bump the major package version by 1 (1.2.3 → 2.0.0)               |
| `npm version minor`                                              | Bump the minor package version by 1 (1.2.3 → 1.3.0)               |
| `npm version patch`                                              | Bump the patch package version by 1 (1.2.3 → 1.2.4)               |
| `npm owner add USERNAME PACKAGENAME`                             | Add someone as an owner                                           |
| `npm deprecate PACKAGE@"< 0.2.0" "critical bug fixed in v0.2.0"` | Adds warning to those that install a package of old versions      |
| `npm update [-g] PACKAGE`                                        | update all packages, or selected packages                         |
| `npm outdated [PACKAGE]`                                         | Check for outdated packages                                       |



### NPX: 
* The npx stands for Node Package Execute and it comes with the npm, when you installed npm above 5.2.0 version then automatically npx will installed. 
* It is an npm package runner that can execute any package that you want from the npm registry without even installing that package. 
* The npx is useful during a single time use package. If you have installed npm below 5.2.0 then npx is not installed in your system. 

### Cheat cheat

| Command                                  | description                                                 |
| ---------------------------------------- | ----------------------------------------------------------- |
| `npx server <folder-name>`               | Create local server                                         |
| `npx pretty-quick`                       | Format using prettier                                       |
| `npx envinfo`                            | Show system info                                            |
| `npx envinfo --preset <package-name>`    | To show system info and show specific npm packages info     |
| `npx json-server <json-file-link>`       | Run a json server with .json file                           |
| `npx sort-package-json`                  | Sort package.json file                                      |
| `npx npm-upgrade`                        | Check for node module updates and update them interactively |
| `npx gvi <package-name>`                 | Get the package version information                         |
| `npx set-default-browser <browser-name>` | Set any browser as default browser via cli                  |
| `npx npkill`                             | Delete node_modules                                         |
| `npx fx <file.json>`                     | View JSON from terminal                                     |


## Testing

