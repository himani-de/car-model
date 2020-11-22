![CI](https://github.com/himani-de/car-model/workflows/CI/badge.svg?branch=main&event=push
## Car Price Prediction model
#### Table of Contents
1. [Overview](#Overview)
2. [Prerequisites](#Prerequisites)
3. [Usage](#Usage)
4. [Limitation](#Limitation)
5. [License](#License)

#### Overview
This car price prediction model uses sklearn LinearRegression model to predict car price based upon following inputs from user.
- Engine Fuel Type
- Engine HP
- Engine Cylinders
- Transmission Type
- Driven_Wheels

![Screenshot](https://github.com/himani-de/car-model/blob/main/images/car_price_app_screenshot.PNG)


#### Prerequisites

-  The requirement for this  project  requires docker and docker-compose installed in your local workstation in order to run locally.


#### Usage

###### Local Deployment

In order to build this environment locally please update your docker-compose.yml file locally as follows:

```
version: "3.8"
services:
 application:
   build: .
   container_name: car-price-prediction
   ports:
     - "9090:9090"  
```

###### Cloud Deployment on Google compute engine using Github-Actions
This use github-actions to build & deploy to a google compute engine just fork this repo and add the following environment variables in your  repo.
- GCP_SA_EMAIL
- GCP_SA_KEY
- GCP_PROJECT_ID
- GCE_INSTANCE_ZONE
- GCE_INSTANCE

### Limitation

This code has been tested on following operating systems.
 * Ubuntu 18.04
 * Windows 10

This code has been tested on following Python Versions.
* Python 3.6
* Python 3.7.3

### License

Released under GNU license, see [LICENSE](LICENSE
  ) for details.
