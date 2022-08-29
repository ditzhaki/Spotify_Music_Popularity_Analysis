# Technologies Used

## Data Cleaning and Analysis
Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python.

## Database Storage
Postgres is the database we intend to use for storage.

## Machine Learning
SciKitLearn is the ML library we'll be using to create a classifier. Our training and testing setup is split into X_train, X_test, y_train, and y_test variables. 

For our random forest classification analysis, we set our y variable to 'Genre' and our X variable to contain the columns for 'Artist_followers','Popularity','tempo','duration_ms','danceability', 'energy', 'key', 'speechiness', 'acoustics', 'instrumentalness', 'valence', and 'liveliness'. We then used a random state of 1 and set the n_estimators to 500. 

For our linear regression classification anaylsis, we set our y variable to 'Artist_Followers' and our X variable to contain the columns for 'danceability', 'energy', 'key', 'speechiness', 'acoustics', 'instrumentalness', 'liveliness', and 'valence'. We then used a random state of 42. 

## Dashboard
Lastly, we will be using Tableau for a fully functioning and interactive dashboard.
