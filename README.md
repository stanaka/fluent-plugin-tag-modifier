# out_tag_modifier_filter.rb

This is a fluentd plugin to modify the tag of the message based on the 'tag' field of its body.

## Installation

Add this line to your application's Gemfile:

    gem 'fluent-plugin-tag-modifier'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fluent-plugin-tag-modifier

## Usage

    <match _transfer>
      type tag_modifier
    </match>
  
