require_relative 'request'

module DogApi
    class Client
        def self.all_breeds
            response = Request.call(http_method: 'get', endpoint: 'breeds/list/all' )
        end
        
        def self.random_breed
            response = Request.call(http_method: 'get', endpoint: 'list/all/random' )
        end

        def self.all_master_breeds
            response = Request.call(http_method: 'get', endpoint: 'breeds/list' )
        end

        def self.sub_breeds
            response = Request.call(http_method: 'get', endpoint: 'breed/{breed}/list' )
        end
    end
end
