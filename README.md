# Spotify Analysis: Music Popularity

## Team Overview

### Team Members

* Justin Darr: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jdarr)
* Jordan Glassberg: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jglassberg)
* Diana Itzhaki: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/ditzhaki)

### Communication Protocols 

Communication between team members will be conducted via a groupchat on Slack and through email. Majority of the communication will occur during class hours with additional time scheduled outside of class should the project require it. Communication outside of class hours will primarily occur within Slack, with Zoom meetings as a supplemental option.

## Project Overview

### Description of Datasource / Reason for selecting dataset:

Our group has decided to analyze Spotify's Top Daily Songs from the years 2017 to 2020. The dataset we will be using is in the form of a CSV file and was retrieved from the Spotify API. It can be found through the link below:

https://www.kaggle.com/datasets/pepepython/spotify-huge-database-daily-charts-over-3-years?select=Final+database.csv

We chose this robust dataset becuase it provides extensive insight into the daily 200 chart topping songs with over 170,000 rows of data and columns containing both descriptive information and musical traits. 

### Questions we hope to answer:

The questions we hope to answer through our dataset include:
* Predicting the genre of a song using a Random Forest Model
* Solving for the number of Artist Followers using a linear regression model. 

## Database

### Cleaning the Dataset

For segment 1 of our project, we took a random sample set consisting of 981 rows of data and then manually cleaned up our CSV file in excel. We began by deleting any columns we felt were unnecessary for our analysis and rows that were missing data. Then, we took a look at columns that needed a change in data type. Specifically, we changed the 'Explicit' and 'Album/Single' columns from string columns to numerical values. In the 'Explicit' column, any __False__ values were assigned a numerical value of 1 while any __True__ values were assigned a numerical value of 0. Similarly, for the 'Album/Single' column, any __Album__ values were assigned a numerical value of 0 while any __Single__ values were assigned a numerical value of 1. 

### Analyzing the Dataset

Using the updated CSV file and the SciKitLearn Library, we solved for Artist Followers using a linear regression model and for Genre using a Random Forest Model. 

## Technology Used

The technology.md file can be found in the following [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/ditzhaki).
