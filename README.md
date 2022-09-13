# Spotify Analysis: Music Popularity

## Team Overview

### Team Members

* Justin Darr: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jdarr--Seg3)
* Jordan Glassberg: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/jglassberg--Seg3)
* Diana Itzhaki: [branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis/tree/ditzhaki--Seg3)

---
## Project Overview

[Main Branch](https://github.com/ditzhaki/Spotify_Music_Popularity_Analysis)

### Topic 

The topic we have selected for our final project is an in-depth analysis of Spotify’s Daily Top Songs from 2017 – 2020. The purpose of our project is to analyze various aspects of each of these Daily Top Songs by using a Random Forest Model. Ultimately, we would like to predict the genre of a song based on numerous features supplied in our dataset. 

### Datasource

The dataset we will be using is in the form of a CSV file and was retrieved from the Spotify API. We chose this robust dataset becuase it provides extensive insight into the daily 200 chart topping songs with over 170,000 rows of data and columns containing both descriptive information and musical traits. It can be found through the following [link](https://www.kaggle.com/datasets/pepepython/spotify-huge-database-daily-charts-over-3-years?select=Final+database.csv).

### Questions we hope to answer:

The questions we hope to answer through our dataset include:
* What is the Artist Popularity by Country?
* Who are the most Popular Artists?
* What is the most popular Genre?
* What is the ranking by Artist Followers?

---
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

### Model Choice

The model we decided to use was a Random Forest Model to solve for the Genre of a song. A random forest algorithm samples the data and builds several smaller yet simpler decision trees. These decision trees can be combined to create a strong learner, which has much better decision-making power. Additional benefits of a Random Forest Model are as follows:

* Robust against overfitting as all of those weak learners are trained on different pieces of the data.
* Can be used to rank the importance of input variables in a natural way.
* Can handle thousands of input variables without variable deletion.
* Are robust to outliers and nonlinear data.
* Run efficiently on large datasets.

However, with benefits come limitations. Those limitations are as follows:

* Large numnber of trees can make the algorithm too slow and ineffective for real-time predictions.
* Although fast to train, it is quite slow in creaitng predictions once trained.
* Acts as a predictive modeling tool, not a descriptive tool. Therefore, it is not a good approach when looking for a description of the relationships in our data.

### Feature Selection

For our random forest model, we assigned our y value to output the genre. We then set our X values to the following columns: artist_followers, popularity, tempo, duration_ms, danceability, energy, speechiness, acoustics, instrumentalness, valence, and liveliness. These features were decided based on multiple factors. During segment 1 of our project, we used a sample dataset that gave us the opportunity to review the effect each feature would have on our results. We found that this combination of features worked best as it also only contained columns that were similar in datatype, specifically all being numeric.

Once our training and testing scores were established, we used the 'feature_importances_' attribute which allowed us to see which features have the most impact on the decision. The 3 most impactful features can be seen in the image below:

<img width="988" alt="Screen Shot 2022-09-07 at 7 34 56 PM" src="https://user-images.githubusercontent.com/101564349/189001033-746383c6-9966-455d-8e33-14aae87a9a47.png">

### Data Exploration

During our data exploration phase, we decided to use the 'feature_importances' attribute as mentioned above. Our goal was to distinguish which feature had the greatest impact on our results. We were surprised to see that Artist_followers was the most impactful when it came to predicting the Genre of a song as those two features are not typically thought to be directly related. 

### Training and Testing Sets

The next step in our analysis included splitting our dataset into two: training and testing sets. In supervised learning, the model uses the training dataset to learn from it and then uses the testing dataset to assess its performance. In our case, we specified a random state of 1 which ensures that the same rows are assigned to train and test sets, respectively. We then scaled our training and testing variables and fit a random forest classifier to the data to obtain an output of:

<img width="248" alt="Screen Shot 2022-09-07 at 7 37 42 PM" src="https://user-images.githubusercontent.com/101564349/189001254-f49d6184-91c1-472f-9ba8-1f834c757948.png">

### Current Accuracy Score

Our current accuracy score is...

### Changes Made / Additional Training

Initially, one of our goals was to be able to determine the popularity of a song by using a Linear Regression Model. Unfortunately, our results prodcuced scores under 2% and therefore, we found it to be ineffective. For this reason, we decided to change our approach to simply using a Random Forest Model to predict Genre and eliminate any Linear Regression analysis from our code. 

For our analysis, we felt we did not have to do any additional training because we achieved satisfactory results on our Random Forest Model the first time.

___
## Dashboard

The final dashboard will be created using Tableau. We will use the interactive dashboard to describe music popularity within Spotify. Specifically, we will be displaying the Artist Popularity by Country, the Most Popular Artists, Genre Popularity, and lastly we will be ranking Artist Followers. 

___
## Presentation

Our google slides can be found [here](https://docs.google.com/presentation/d/1vgwlN49s1R6YzOi0XSvCwqEVamwYzTiS_cfFwA2odY0/edit#slide=id.gc6f889893_0_0).

___
## Technology Used

**Data Cleaning and Analysis**: Pandas is used to clean the data and perform an exploratory analysis.

**Database Storage**: Postgres is the database we intend to use for storage. We have used pgAdmin as an open source management tool to perform database administration.

**Machine Learning**: SciKitLearn is the ML library we used to create a classifier. Our training and testing setup is split into X_train, X_test, y_train, and y_test variables.

**Dashboard**: We used Tableau for a fully functioning and interactive dashboard.
