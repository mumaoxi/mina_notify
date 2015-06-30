require "mina_notify/version"
require 'mina'

module MinaNotify
  module_function

  def trigger_function(mina_self, event_name)
    puts "mina_self:#{mina_self},event_name:#{event_name},whoami:#{`whoami`}"
  end
end
