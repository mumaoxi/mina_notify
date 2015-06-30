require "mina_notify/version"
require 'mina'
require 'json'
require 'faraday'

module MinaNotify
  module_function

  def trigger_event(mina_self, event_name)
    begin
      mina = {
          operator: `whoami`,
          domain: mina_self.domain,
          task_name: event_name,
          code_src: mina_self.repository,
          code_branch: mina_self.branch
      }
      response = Faraday.new(:url => 'http://dev.tanliani.com').post do |req|
        req.url '/api/minas'
        req.headers['Content-Type'] = 'application/json'
        req.body = {mina: mina}.to_json
      end
      response.body
    rescue Exception => e
    end

  end
end
