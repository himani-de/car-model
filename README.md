## Car Price Prediction AND Heart disease Prediction Model
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

This Heart disease Prediction model predicts the patient is suffering from heart disease or not based upon following inputs.
- cholestrol
- oldpeak
- Constrictive pericarditis
- Coronary artery
- Thalassemia

#### Prerequisites

-  The requirement for this  project  requires docker and docker-compose installed in your local workstation in order to run locally.



#### Usage

###### Local Deployment

In order to predict the car price run the following command.

```
docker-compose up -d
```

In order to predict the Heart disease run the following command.

```
docker-compose -f heart-disease-predict-docker-compose.yml up -d
```

### Limitation

This code has been tested on following operating systems.
 * Centos 7
 * Windows 10
 * MacOS 10.2

This code has been tested on following Versions.
* Python 3.8.3
* docker 1.13.1
* docker-compose 1.27.4


### License

Released under GNU license, see [LICENSE](LICENSE
  ) for details.
