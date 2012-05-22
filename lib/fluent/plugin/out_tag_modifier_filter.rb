class Fluent::TagModifierFilterOutput < Fluent::Output
  Fluent::Plugin.register_output('tag_modifier', self)

  config_param :behavior, :string, :default => 'replace' #れreplace or append
  config_param :add_prefix, :string, :default => ''

  def emit(tag, es, chain)
    es.each {|time,record|
      if record['tag'] && record['tag'] != tag
        new_tag = @behavior != 'replace' ? tag + '.' : ''
        new_tag = new_tag + @add_prefix + '.' + recode['tag']

        Fluent::Engine.emit(new_tag, time, record)
      end
    }

    chain.next
  end
end
