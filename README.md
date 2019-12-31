# docker-kindle

Kindle in Docker.

## Usage

Clone the repository and build the image.

```sh
git clone git@github.com:igjit/docker-kindle.git
cd docker-kindle
docker-compose build
```

Install Kindle and fonts you need with `winetricks`.

```sh
xhost +
docker-compose run --rm kindle winetricks cjkfonts kindle
```

Select the Amazon site and sign in.

![Screenshot](image/sign-in.png)

After installation, launch Kindle with:

```sh
docker-compose run --rm kindle
```
