# rack2aws [![Build Status](https://travis-ci.org/amrfaissal/rack2aws.svg?branch=master)](https://travis-ci.org/amrfaissal/rack2aws) [![Gem Version](https://badge.fury.io/rb/rack2aws.svg)](https://badge.fury.io/rb/rack2aws)

`rack2aws` is a command-line tool that helps you port all your files from Rackspace Cloud Files&trade; to AWS S3.

## Installation

To install it, just run:

```
    $ gem install rack2aws
```

It will install `rack2aws` executable in your `.gem/ruby/x.x.x/bin` folder.

## Usage

To port all your files:

```
    $ rack2aws port --container="CONTAINER_NAME" --bucket="BUCKET_NAME"
```

Use `--verbose` to see what's being done.

Use `--help` to display help documentation.

## Contributing

Bug reports and pull requests are welcome. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org/) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
