# Oscar Nominations
Team Members: Brieona Turner, Jake Littman, Christina Ibrahim Puri, Oneil Anderson, Elena Rivera, Simon Chamorro

### Roles and Responsiblities

#### Git Hub Repository
Christine Ibrahim Puri

#### Data ETL and Database Management
Brieona Turner

#### Machine Learning Model
Jake Littman

#### Data Visualization and Presentation
Christine Ibrahim Puri
Elena Rivera
Simon Chamorro

#### Technologies
Oneil Anderson

### Project Overview: 
Our project will analyze movies throughout history. Using the datasets at our disposal, we will identify the variables that relate to oscar performance of actors/actresses/directors and writers. We will use machine learning models to help predict outcomes of the oscars and address the following questions:

- Why do certain genres outperform others?
- What factors influence movie nominations?
- What genres and production companies have the highest probability of being nominated for an Oscar at the next academy award?

### Dataset Details:
The main movie dataset was originally sourced from The Movie Database (TMDB) via an Open API. We sourced this dataset via a [Kaggle Movies Dataset](https://www.kaggle.com/rounakbanik/the-movies-dataset?select=movies_metadata.csv). 

To further our data analysis, we sourced the [Oscars Dataset](https://www.kaggle.com/rounakbanik/the-movies-dataset?select=movies_metadata.csv) which was originally scraped from the official Academy Awards seach site.

### Machine Learning Model
The objective of our project is to compare different machine learning models to identify the model that yields the best prediction score. The models to be used are logistic regression, linear regression for those "nominated vs not nominated, and a decision tree/random forest model. 

We will look to find the most accurate model.

Independent Vars: Genre, Production Countries 

Dependent Vars: Total Oscars, Total Revenue, Total Budget, Nomination (Binary)

Due to the selective nature of the Academy, we will assess the majority population using over/under sampling in our models in order to remove any sampling bias in the underlying data.

### Technology

#### Database Storage
We will use PostgreSQL as our relational database storage.

#### Data Cleaning
We will use Python to Extract, Transform and Load and perform meaning analysis over the data. We will be using the ImbalancedLearn, Pandas, Numpy, and SciKitLearn packages.

#### Machine Learning
Our machine learning models will leverage SciKitLearn and ImbalancedLearn Python packages. Due to the oscar imbalance, we will use random over/undersampling, SMOTE, Cluster Centroid Undersampling, and/or SMOTEEN.

#### Dashboard
We will leverage D3 Javascript/Tableau to create our dashboard to present our findings.

### Communication Protocols
We plan to meet once a week outside of our class time and on an adhoc basis where need be to discuss the progress of the project, any blockers, and to ensure the project is on track. To faciliate easy communication within the group, we create a slack channel for all team members.


