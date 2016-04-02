# Ash Travis Buildpack

This project contains the Buildfile to add to a `.travis.yml` file to easily get an Ash module set up on [Travis CI](https://travis-ci.org/).

## Getting Started

You actually won't ever need to clone down this repo.

Ash's [test module](https://github.com/ash-shell/test) has a command that will allow you run a single line to get your module hooked up.

While in your modules directory run:

```sh
ash test:travis
```

Assuming you've already written your tests, you won't need to do anything other than turn Travis on.

## Disclaimer

You'll note in the supplied [.travis.yml](/travis.yml) is using a bit.ly link.  I've added this to keep track of the number of times this file has been downloaded (simply out of pure curiosity).  The data is completely anonymized, so I suspect nobody should have a problem with it -- but in the event you do, you can remove the `-A ""` part out of the curl command, as bit.ly won't track a "click" unless it is supplied a User Agent.  You could also supply the Buildfile in your own repository and use that.

## License

[MIT](/LICENSE.md)
