# Spotify Analysis: Music Popularity

## Team Overview

### Team Members

* Justin Darr: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jdarr--Seg2)
* Jordan Glassberg: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jglassberg--Seg2)
* Diana Itzhaki: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/ditzhaki--Seg2)

### Communication Protocols 

Communication between team members will be conducted via a groupchat on Slack and through email. Majority of the communication will occur during class hours with additional time scheduled outside of class should the project require it. Communication outside of class hours will primarily occur within Slack, with Zoom meetings as a supplemental option.

## Project Overview

### Topic

The topic we have selected for our final project is an in-depth analysis of Spotify’s Daily Top Songs from 2017 – 2020. 

### Dataset

The dataset we will be using is in the form of a CSV file and was retrieved from the Spotify API. We chose this robust dataset becuase it provides extensive insight into the daily 200 chart topping songs with over 170,000 rows of data and columns containing both descriptive information and musical traits. It can be found through the link below:

https://www.kaggle.com/datasets/pepepython/spotify-huge-database-daily-charts-over-3-years?select=Final+database.csv

### Questions we hope to answer:

The questions we hope to answer through our dataset include:
* Predicting the genre of a song using a Random Forest Model
* Solving for the number of Artist Followers using a linear regression model. 

## Machine Learning Model & Analysis

### Data Preprocessing

The total amount of songs derived from the Spotify API is 170,633. The analysis contains 170,478 songs after data cleaning. Data was filtered or dropped by these criteria:

* Added a 'Unique_ID' column to more easily identify each row of data
* Dropped any columns that were unnecessary for our analysis. These included the 'Uri' column, 'Genre_new', 'Days_since_release', 'Released_after_2017', 'Explicit_false', 'Explicit_true', 'album', 'compilation', 'single', as well as columns defining individual genres, countries, and emotions. 
* Removed any rows with missing data and/or incorrectly formatted data
* Changed the values of the ‘Explicit’ column from string to numerical values. Any False values were assigned a numerical value of 1 while any True values were assigned a numerical value of 0. 
* Changed the values of the ‘Album/Single’ column from string to numerical values. Any Album values were assigned a numerical value of 0 and any Single values were assigned a numerical value of 1. 
* Converted Release_Date to Release_Year to ensure each value in the column was consistent.

The cleaning of the preliminary data was done via excel.

### Database

When generating our database, we found it essential to start by creating a solid database foundation. This was done by mapping out an Entity Relationship Diagram, [found here](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/blob/jdarr--Seg2/QuickDBD-export.png). Using this visual representation, we were able to create a database in PgAdmin that held our dataset in two separate tables. Once the tables had been formed, we joined the two tables using a common variable held in both tables (the Unique ID column). This process can be seen in our [sql file](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/blob/jdarr--Seg2/master_table.sql). 

### Feature Selection

For our random forest model, we assigned our y value to output the genre. We then set our X values to the following columns: artist_followers, popularity, tempo, duration_ms, danceability, energy, speechiness, acoustics, instrumentalness, valence, and liveliness. These features were decided based on multiple factors. During segment 1 of our project, we used a sample dataset that gave us the opportunity to review the effect each feature would have on our results. We found that this combination of features worked best as it also only contained columns that were similar in datatype, specifically all being numeric.

Once our training and testing scores were established, we used the 'feature_importances_' attribute which allowed us to see which features have the most impact on the decision. The most impactful features can be seen in the image below:

<img width="988" alt="Screen Shot 2022-09-07 at 7 34 56 PM" src="https://user-images.githubusercontent.com/101564349/189001033-746383c6-9966-455d-8e33-14aae87a9a47.png">

### Data Exploration

During our data exploration phase, we decided to use the 'feature_importances' attribute as mentioned above. Our goal was to distinguish which faeture had the greatest impact on our results. We were surprised to see that Artist_followers was the most impactful when it came to predicting the Genre of a song as those two features are not typically thought to be directly related. 

### Training and Testing Sets

The next step in our analysis including splitting our dataset into two: training and testing sets. In supervised learning, the model uses the training dataset to learn from it and then uses the testing dataset to assess its performance. In our case, we specified a random state of 1 which ensures that the same rows are assigned to train and test sets, respectively. We then scaled our training and testing variables and fit a random forest classifier to the data to obtain an output of:

<img width="248" alt="Screen Shot 2022-09-07 at 7 37 42 PM" src="https://user-images.githubusercontent.com/101564349/189001254-f49d6184-91c1-472f-9ba8-1f834c757948.png">

### Model Choice

The first model we decided to use was a Random Forest Model to solve for Genre. A random forest algorithm samples the data and builds several smaller yet simpler decision trees. These decision trees can be combined to create a strong learner, which has much better decision-making power. Additional benefits of a Random Forest Model are as follows:

* Robust against overfitting as all of those weak learners are trained on different pieces of the data.
* Can be used to rank the importance of input variables in a natural way.
* Can handle thousands of input variables without variable deletion.
* Are robust to outliers and nonlinear data.
* Run efficiently on large datasets.

However, with benefits come limitations. Those limitations are as follows:

* Large numnber of trees can make the algorithm too slow and ineffective for real-time predictions.
* Although fast to train, it is quite slow in creaitng predictions once trained.
* Acts as a predictive modeling tool, not a descriptive tool. Therefore, not a good approach when looking for a description of the relationships in our data.

The second model we decided to use was a Linear Regression Model to solve for Artist Followers. Unfortunately, our results produced scores under 2% and therefore, we found it to be ineffective. 

## Dashboard

The final dashboard will be created using Tableau. 

## Presentation

Our google slides draft can be found [here](https://docs.google.com/presentation/d/1vgwlN49s1R6YzOi0XSvCwqEVamwYzTiS_cfFwA2odY0/edit#slide=id.gc6f889893_0_0).

## Technology Used

The technology.md file can be found in the following [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/ditzhaki).
