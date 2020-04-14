Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['50702455'], ENV['c1d2c045eaa14f5889cc641743e270e4']
end