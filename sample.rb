require "slack-notify"
require 'clockwork'

module Clockwork
    handler do |job|
      client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
      client.notify("Hello World!")
    end
    every(10.seconds, 'frequent.job')
end