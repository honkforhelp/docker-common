# docker-common
## A Common Starting Point for Some Dockerized Apps

Believe it or not, several languages and frameworks are highly 
interdependent.

Did you know that many NPM packages require Python to build
themselves? (So does NodeJS itself if you build from source!!!)

Or that Ruby-on-Rails requires NodeJS for its asset pipeline?

This Docker image sweeps some of that under the rug so you can get down
to the business of making your app go.

## What's Included?

- Python 2.7.13
- NodeJS 6.11.1 (LTS)
- Ruby 2.3.4
- Nginx 1.10.3
- PosgreSQL 9.5.7
- Some common libraries like ImageMagick

## Why those things?

Well, that's what we use here at HONK.

## Why install those specifically in the App's image?

Turns out it's faster to build and creates smaller app images if we 
separate out the language installations.

Additionally, if we use the same base image, even for apps that don't
need all that stuff, it simplifies what the Docker agent needs to grab
creating smaller builds and faster startups.

## Why isn't X include?

Probably because we don't need X, at least not yet.

If you like what we're doing here, we suggest basing your image off this
one like so:

```Dockerfile
# We highly suggest you pin your FROM to a specific verson of this image
FROM honkdev/common:1.0.1

# Get X!!
RUN apt-get -y update && apt-get -y install X

# Now your image has X!!!
```

## Can you add X instead?

Probably not, unless X is used by some very very common packages.

But don't be afraid to open an issue or fork and open a PR!

Also check out our `honkdev/ubuntu-base` to customize an image just like
this for yourself! (https://github.com/honkforhelp/docker-ubuntu-base)
