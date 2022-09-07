# Spotify Analysis: Music Popularity

## Team Overview

### Team Members

* Justin Darr: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jdarr--Seg2)
* Jordan Glassberg: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jglassberg--Seg2)
* Diana Itzhaki: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/ditzhaki--Seg2)

### Communication Protocols 

Communication between team members will be conducted via a groupchat on Slack and through email. Majority of the communication will occur during class hours with additional time scheduled outside of class should the project require it. Communication outside of class hours will primarily occur within Slack, with Zoom meetings as a supplemental option.

## Project Overview

### Selected Topic

The topic we have selected for our final project is an in-depth analysis of Spotify’s Daily Top Songs from 2017 – 2020. 

### Dataset

The dataset we will be using is in the form of a CSV file and was retrieved from the Spotify API. We chose this robust dataset becuase it provides extensive insight into the daily 200 chart topping songs with over 170,000 rows of data and columns containing both descriptive information and musical traits. It can be found through the link below:

https://www.kaggle.com/datasets/pepepython/spotify-huge-database-daily-charts-over-3-years?select=Final+database.csv

### Questions we hope to answer:

The questions we hope to answer through our dataset include:
* Predicting the genre of a song using a Random Forest Model
* Solving for the number of Artist Followers using a linear regression model. 

## Machine Learning Model

### Data Preprocessing

The total amount of songs derived from the Spotify API is 170,633. The analysis contains 170,478 songs after data cleaning. Data was filtered or dropped by these criteria:

* Added a 'Unique_ID' column to more easily identify each row of data
* Dropped any columns that were unnecessary for our analysis. These included the 'Uri' column, 'Genre_new', 'Days_since_release', 'Released_after_2017', 'Explicit_false', 'Explicit_true', 'album', 'compilation', 'single', as well as columns defining individual genres, countries, and emotions. 
* Removed any rows with missing data and/or incorrectly formatted data
* Changed the values of the ‘Explicit’ column from string to numerical values. Any False values were assigned a numerical value of 1 while any True values were assigned a numerical value of 0. 
* Changed the values of the ‘Album/Single’ column from string to numerical values. Any Album values were assigned a numerical value of 0 and any Single values were assigned a numerical value of 1.
* Changed the name of columns to function better in PgAdmin. Album/Single was changed to Album_Single, 'key' to 'key_music', and 'mode' to 'mode_music'. 
* Converted Release_Date to Release_Year 

The cleaning of the preliminary data was done via excel.

### Feature Selection

For our random forest model, we assigned our y value to output the genre. We then set our X values to the following columns: artist_followers, popularity, tempo, duration_ms, danceability, energy, speechiness, acoustics, instrumentalness, valence, and liveliness. These features were decided based on multiple factors. During segment 1 of our project, we used a sample dataset that gave us the opportunity to review the effect each feature would have on our results. We found that this combination of features worked best as it also only contained columns that were similar in datatype, specifically all being numeric.

### Training and Testing Sets

The next step in our analysis including splitting our dataset into two: training and testing sets. In supervised learning, the model uses the training dataset to learn from it and then uses the testing dataset to assess its performance. In our case, we specified a random state of 1 which ensures that the same rows are assigned to train and test sets, respectively. 

### Model Choice

The first model we decided to use was a Random Forest Model to solve for Genre. The benefits of a Random Forest Model are as follows:

* Are robust against overfitting as all of those weak learners are trained on different pieces of the data.
* Can be used to rank the importance of input variables in a natural way.
* Can handle thousands of input variables without variable deletion.
* Are robust to outliers and nonlinear data.
* Run efficiently on large datasets.

## Results

### Data Exploration

### Analysis

Using the updated CSV file and the SciKitLearn Library, we solved for Artist Followers using a linear regression model and for Genre using a Random Forest Model. 

## Technology Used

The technology.md file can be found in the following [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/ditzhaki).
