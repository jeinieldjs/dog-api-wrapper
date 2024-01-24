# Dog API wrapper

Built through Rails, this is an API wrapper designed to fetch data cataloged on [Dog API](https://dog.ceo/dog-api/) This project aims to simplify the integration of Dog API into the development of Ruby applications.

**Note:** This wrapper utilizes the [rest-client](https://github.com/rest-client/rest-client) gem for making HTTP requests and interacting with the third-party API.
## Available endpoints

* **GET /api/all_breeds**
  - To get a list of all dog breeds

* **GET /api/random_image**
  - To get a single image of a dog at random
  - **Example Response:**
    ```irb
        irb(main):003> DogApi::Client.random_image
        =>
          {:code=>200,
           :status=>"Success",
           :data=>{"message"=>"https://images.dog.ceo/breeds/hound-english/n02089973_3243.jpg", "status"=>"success"}}
    ```

* **GET /api/all_master_breeds**
  - To get a list of all master breeds

* **GET /api/sub_breeds/:breed**
  - To get the list of all sub-breeds under a master breed. It returns an empty array if a breed does not have a sub-breed.
  - **Example Response:**
    ```irb
    irb(main):004> DogApi::Client.sub_breeds('hound')
    =>
    {:code=>200,
     :status=>"Success",
     :data=>{"message"=>["afghan", "basset", "blood", "english", "ibizan", "plott", "walker"], "status"=>"success"}}
    ```
  * **GET /api/breed_info/:breed**
  - To get information about a specified dog breed. **Note:** Based on the documentation, data on breed information is currently incomplete.
    
  - **Example Response:**
    ```irb
    irb(main):006> DogApi::Client.breed_info('hound')
    => {:code=>404, :status=>"404 Not Found", :data=>"Invalid request."}
    ```



## Documentation
  For more information about methods and parameters available, you may refer to the following: 

- **Github Project:** [https://github.com/ElliottLandsborough/dog-ceo-api](https://github.com/ElliottLandsborough/dog-ceo-api)
- **API Documentation:** [https://dog.ceo/dog-api/documentation/](https://dog.ceo/dog-api/documentation/)

