require 'rest-client'

module DogApi
  class Request
    BASE_URL = 'https://dog.ceo/api/'

    def self.call(http_method:, endpoint:)
      url = "#{BASE_URL}#{endpoint}"

      result = RestClient::Request.execute(
        method: http_method,
        url: url,
        headers: {'Content-Type' => 'application/json'}
      )
      { code: result.code, status: 'Success', data: JSON.parse(result.body) }  
    rescue RestClient::ExceptionWithResponse => error 
        { code: error.http_code, status: error.message, data: Errors.map(error.http_code) }
    end
  end
end
