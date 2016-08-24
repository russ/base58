# base58

Base58 utility to encode integers as strings and vice versa.

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  base58:
    github: russ/base58
```


## Usage


```crystal
require "base58"

Base58.decode("6hENdZ")
Base58.encode(3470417529)
```


## Contributing

1. Fork it ( https://github.com/russ/base58/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [russ](https://github.com/russ) Russ Smith - creator, maintainer

Code based on https://github.com/dougal/base58
