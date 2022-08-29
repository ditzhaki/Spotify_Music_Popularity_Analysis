# Spotify Analysis: Music Popularity

## Team Overview

### Team Members

* Justin Darr: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jdarr)
* Jordan Glassberg: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jglassberg)
* Diana Itzhaki: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/ditzhaki)

### Communication Protocols 

Communication between team members will be conducted via a groupchat on Slack and through email.

## Project Overview

### Reason for selecting dataset:
This robust dataset provides insight into the daily 200 chart topping songs from 2017 - 2020. With a large variety of data provided for each 

### Description of Datasource:
This dataset is in the form of a csv file and was retrieved from the Spotify API. 

### Questions we hope to answer:

Option 1: Solve for genre using a Random Forest model.

Option 2: Use a linear regression model to solve for Artist Followers.  

## Database

### Cleaning the Dataset

For segment 1 of our project, we took a random sample set consisting of 981 rows of data and then manually cleaned up our csv file in excel. We began by deleting any columns we felt were unnecessary for our analysis and rows that were missing data. Then, we took a look at columns that needed a change in data type. Specifically, we changed the 'Explicit' and 'Album/Single' columns from string columns to numerical values. In the 'Explicit' column, any __False__ values were assigned a numerical value of 1 while any __True__ values were assigned a numerical value of 0. Similarly, for the 'Album/Single' column, any __Album__ values were assigned a numerical value of 0 while any __Single__ values were assigned a numerical value of 1. 
