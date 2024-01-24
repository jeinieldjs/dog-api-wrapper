require_relative 'request'

module DogApi
    class Client
        def self.all_breeds
            response = Request.call(http_method: 'get', endpoint: 'breeds/list/all' )
        end
        
        def self.random_image
            response = Request.call(http_method: 'get', endpoint: 'breeds/image/random' )
        end

        def self.all_master_breeds
            response = Request.call(http_method: 'get', endpoint: 'breeds/list' )
        end

        def self.sub_breeds(breed)
            endpoint = "breed/#{breed}/list"
            response = Request.call(http_method: 'get', endpoint: endpoint)
        end

        def self.breed_info(breed)
            endpoint = "breed/#{breed}"
            response = Request.call(http_method: 'get', endpoint: endpoint)
        end
    end
end
