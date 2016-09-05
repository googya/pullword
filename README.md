# pullword

a package for Crystal project using (pullword)[http://pullword.com/]

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  pullword:
    github: googya/pullword
```


## Usage


```crystal
require "pullword"

Pullword.pullword("湖北大学城市学院是个好学院", 0.6)
# => ["湖北:0.817187", "湖北大学:1", "北大:0.727944", "北大学城:0.959108", "大学:0.803232", "大学城:0.930259", "城市:0.821246", "城市学院:0.878604", "学院:0.820484", "是个:0.643618", "学院:0.93359"]
```


TODO: Write usage instructions here

## Development

when developing Crystal project, you may want some debugger tools like irb in Ruby. Luckly, there is one, crystal-icr

## Contributing

1. Fork it ( https://github.com/googya/pullword/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[googya]](https://github.com/[googya]) leslie.wen - creator, maintainer
