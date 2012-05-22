# out_tag_modifier_filter.rb

This is a fluentd plugin to modify the tag of the message based on the 'tag' field of its body.

    <match _transfer>
      type tag_modifier
    </match>
  
  
## Installation

Add this line to your application's Gemfile:

    gem 'fluent-plugin-tag-modifier'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-tag-modifier

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
