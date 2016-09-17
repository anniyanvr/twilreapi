module Twilreapi::SpecHelpers::RequestHelpers
  def do_request(method, path, body = {}, headers = {})
    public_send(method, path, :params => body, :headers => authorization_headers.merge(headers))
  end

  def authorization_headers
    {"HTTP_AUTHORIZATION" => ActionController::HttpAuthentication::Basic.encode_credentials(http_basic_auth_user, http_basic_auth_password)}
  end

  def account
    @account ||= create(:account, *account_traits.keys)
  end

  def account_traits
    {:with_access_token => nil}
  end

  def http_basic_auth_user
    account.sid
  end

  def http_basic_auth_password
    account.auth_token
  end

  def account_sid
    account.sid
  end
end

RSpec.configure do |config|
  config.include ::Twilreapi::SpecHelpers::RequestHelpers, :type => :request
end
