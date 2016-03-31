# Group Milestone 4 - *Mass Mural*

**Mass Mural** is an app that allows users to create a mural without the hassle. Sign up and login and start drawing on buildings all around you. The catch? Everything is digital. Leave a message to your friend, leave a picture for society, make your mark on the WORLD! 

Check out our current wireframes: https://www.fluidui.com/editor/live/preview/p_Vgbmw1niX9uM5W36221Kn1F611gREDCp.1456368674315

## APIs Used
- [ ] Google Map API to get location data (Possibly also considering using the MapKit)
- [ ] Google Maps SDK for Street View integration. 
- [ ] Drawing application API, to allow users to draw within the application. 

Model Classes:
- [ ] GoogleStreetView
 - Properties of this class:
    1. Coordinates
    2. Images
    3. Movable screen

## Parse Integration
- [ ] Database
 - Components of Database: 
    1. Username
    2. Hashed password
    3. Drawings 
    4. Google Street View Captures 

##Considerations
-Product Pitch:
Have you ever wanted to draw on Mount Rushmore? Have you ever been bored in class and wanted to draw on something? Then you should check out Mass Mural! Mass Mural is an app that allows users to create a mural while using the world as your canvas without the hassle. 
-Stakeholders:
The stakeholders are college students and the general populus who would want to do something fun on their cell phone while waiting. It will be used as a form of entertainment.
-Core Flows:
The core flows are a log-in page, location page, and drawing page. The functions are supposed to be very user friendly and are meant to enable the user to draw anywhere and in any location that they want.
-Final Demo:
Our final demo will start off with the landing log-in page, then go to the location page where a user can enter coordinates to pick a place to draw on, and then it will go to the actual page where they can get a saved image to draw on or draw on a completely new page.
-Mobile features:
The mobile features that we are leveraging are using Google Maps, tap gestures, and the location feature.
-Technical Concerns:
Technical concerns that we are worried about are implementing Google Maps properly and ensuring that we are able to store all the images in a good database.

## User Stories

The following **required** functionality is completed:

- [ ] Login page, with fully operational sign in (Considering using Parse as a backend) 
- [ ] Location page that prompts user to allow location services use. 
- [ ] Drawing page that allows users to add onto previous drawings or start their own based on their location. 

The following **optional** features are implemented:

- [ ] Live drawing capability 
- [ ] User rankings and notifications 
- [ ] Animations throughout the app

    Copyright [2016] [Team MassMural]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

