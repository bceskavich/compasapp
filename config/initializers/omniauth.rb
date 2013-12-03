OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '692942400723630', 'f548b8ded4546ac1d693806236bff235',
           :display => 'popup'

end