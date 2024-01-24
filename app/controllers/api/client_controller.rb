class Api::ClientController < ApplicationController
    def all_breeds
        response = DogApi::Client.all_breeds
        render json: response
    end
  
    def random_image
        response = DogApi::Client.random_image
        render json: response
    end
  
    def all_master_breeds
        response = DogApi::Client.all_master_breeds
        render json: response
    end
  
    def sub_breeds
        response = DogApi::Client.sub_breeds(params[:breed])
        render json: response
    end
  
    def breed_info
        response = DogApi::Client.breed_info(params[:breed])
        render json: response
    end
end
