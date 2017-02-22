Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1612035675478834'], ENV['077e8c2c9fc2887cad776816c7adf66e'],
           scope: 'public_profile', display: 'page', image_size: 'square'
end