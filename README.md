![deploy-car model](https://github.com/himani-de/car-model/workflows/deploy-car%20model/badge.svg)
## Car Price Prediction model
#### Table of Contents
1. [Overview](#Overview)
2. [Prerequisites](#Prerequisites)
3. [Usage](#Usage)
4. [Limitation](#Limitation)
5. [License](#License)

#### Overview
This car price prediction model predicts car price($) based upon following inputs from user.
- Make
- Engine HP
- Engine Cylinders
- Year

![Screenshot](https://github.com/himani-de/car-model/blob/main/images/car_price_app_screenshot.PNG)


#### Prerequisites

-  The requirement for this  project  requires docker and docker-compose installed in your local workstation in order to run locally.


#### Usage

###### Local Deployment

In order to build this environment locally please update the docker-compose.yml file locally as follows:

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

* Python 3.8.3

### License

Released under GNU license, see [LICENSE](LICENSE
  ) for details.
