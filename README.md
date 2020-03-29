# Lando Recipe for Laravel


I’ve become a big fan of using Lando for constructing my local dev environment quickly and easily. Lando is, as its website says, “a free, open source, cross-platform, local development environment and DevOps tool built on Docker container technology and developed by Tandem. Designed to work with most major languages, frameworks and services, Lando provides an easy way for developers of all skill levels to specify simple or complex requirements for their projects, and then quickly get to work on them.”

Begin by checking out
---------------------

*   [Lando basics](http://docs.devwithlando.io/started.html)
*   [Lando CLI usage](http://docs.devwithlando.io/cli/usage.html)
*   [Installing Lando](https://docs.devwithlando.io/installation/system-requirements.html)
*   [Laravel Recipe](https://docs.lando.dev/config/laravel.html)

## Configuration

First of all you need to configure some settings such as the **name of your application** and your **database port**. Go to your `.lando.local.yml` file and add your configurations.
```bash
name: laravel-example
services:
  database:
    portforward: 13306
proxy:
  appserver:
    - laravel-example.lando.site # You can add custom domain like *example.local*
```

If you add a custom domain that is **not** ending in `lando.site` for example `laravel-example.local` you have to update `/etc/hosts` file like `127.0.0.1 laravel-example.local`. Please read the [Lando Documentation](https://docs.lando.dev/config/proxy.html#using-a-non-lndo-site-domain) for more info.


## Installation & Initialize Environment

To start building lando env for lando, simple go to your directory which contains the .yml files and in the terminal run the following commands.

```bash
$ lando start
$ lando new-project
$ lando restart
```
The `lando new-project` will install your **laravel** fraimwork in the **www** directory. 

**Boomshakalaka**

## Usage & Tooling

##### Creating new laravel application files.

```bash
$ lando new-project # Creates a new laravel application files in the www directory.
```

##### Installing nodejs into the docker container.

```bash
$ lando install-node # Installs node for the current container not to the global dir
```

##### Running `npm run` in `/www/` directory .

```bash
$ lando run-npm
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)
