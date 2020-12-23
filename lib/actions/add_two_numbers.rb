SlackRubyBotServer::Events.configure do |config|
  config.on :action, 'message_action', 'add-numbers' do |action|
    payload = action[:payload]
    response_url = payload[:response_url]
    message = payload[:message]

    action.logger.info "Evaluating \"#{message[:text]}\"..."

    result = Calculator::Sum.new(message[:text]).evaluate
    puts result
    Faraday.post(response_url, {
      text: "#{result}",
      response_type: 'ephemeral'
    }.to_json, 'Content-Type' => 'application/json')

    { ok: true }
  end
end