SlackRubyBotServer.configure do |config|
  config.oauth_version = :v2
  config.oauth_scope = ['users:read', 'channels:read', 'groups:read', 'chat:write', 'commands', 'incoming-webhook']
   config.view_paths << File.expand_path(File.join(__dir__, 'public'))
end
