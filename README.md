<div align="center">
    <h1>rack2aws</h1>
    <img src="https://raw.githubusercontent.com/amrfaissal/rack2aws/gh-pages/images/teleportation.png" />
    <h3>Teleport your files from Rackspace Cloud Files&trade; to AWS S3</h3>
</div>

[![ Build Status ](https://travis-ci.org/amrfaissal/rack2aws.svg?branch=master)](https://travis-ci.org/amrfaissal/rack2aws) [![Gem Version](https://badge.fury.io/rb/rack2aws.svg)](https://badge.fury.io/rb/rack2aws)

---

`rack2aws` is a command-line tool that helps you port all your files from Rackspace Cloud Files&trade; to AWS S3.

## Installation

To install it, just run:

```
    $ gem install rack2aws
```

It will install `rack2aws` executable in your `.gem/ruby/x.x.x/bin` folder.

**NOTE** Make sure you have `$HOME/.rack/config` and `$HOME/.aws/credentials` files in your `$HOME` directory.

## Usage

To port all your files:

```
    $ rack2aws port --container="CONTAINER_NAME" --bucket="BUCKET_NAME"
```

Use `--nproc NUM_PROC` to specify the number of processes to fork while porting your files. It defaults to the number of CPU cores.

Use `--public` to upload files publicly.

Use `--verbose` to see what's being done.

Use `--help` to display help documentation.

## Contributing

Bug reports, Pull requests and Stars are always welcome. For bugs and feature requests, [please create an issue](https://github.com/amrfaissal/rack2aws/issues/new).

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
