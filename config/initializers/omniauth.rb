Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, ENV['ID'], ENV['Secret key']
end