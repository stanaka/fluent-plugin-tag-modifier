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

This plugin modify the tag of messages based on the 'tag' field of each message.

    <match _transfer>
      type tag_modifier
      behavior replace   # 'replace' or 'append'
	                     # 'replace' make the original tag be replaced.
                         # 'append' make the original tag remain as a prefix.
      add_prefix output  # this is inserted before tag field, after the original tag.
    </match>

With the above configuration, following modification occured.

* before

	_transfer: {"tag":"bar", "msg": "hello"}

* after

	output.bar: {"tag":"bar", "msg": "hello"}

  
