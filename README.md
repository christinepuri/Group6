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
![image](https://user-images.githubusercontent.com/85204128/138625256-77b58a78-289b-489b-b88e-c9c5167964b3.png)

The objective of our project is to compare different machine learning models to identify the model that yields the best prediction score. The models to be used are logistic regression and a decision tree/random forest model. Due to the selective nature of the Academy, we will assess the majority population using over/under sampling in our models in order to remove any sampling bias in the underlying data. We will look to find the most accurate/precise model.

#### Model Benfits/Limitations
Random Forest Models are more likely to overfit the data, since they can split on multiple features whereas Logistic Regression handles better where the dimensionality is limited (single or limited variables).


#### Independent and Target Variables
Independent Vars: Genre (Dummy), Budget_Ranges (Dummy), Revenue_Ranges (Dummy), Runtime_Ranges (Dummy)

Dependent Vars: Nomination (Binary)

#### Updates to feature sleection
In testing the model, we were experiencing high bias, due to the underlying dataset being too simplistic. We found that in the process of feature selection, we dropped too many variables which caused more assumptions about the target value. To address these issue, we worked to further cleanse the data upstream by binnning budget, revenue, and runtime into low, medium and high buckets. This along with dropping null rows, allowed us to combat our underfitting issue.  


### Technology

#### Database Storage
We will use PostgreSQL as our relational database storage.

![image](https://user-images.githubusercontent.com/85204128/138626925-0c5e9b0f-1efd-4c8c-b5f8-ebd53b9cd399.png)

#### Data Cleaning
We will use Python to Extract, Transform and Load and perform meaning analysis over the data. We will be using the ImbalancedLearn, Pandas, Numpy, and SciKitLearn packages.

Cleaning the data took a variety of steps to perform. The first step was to clean up the data by regex processing category, production companies and genres. The next step was to correct the datatype of release date from an object into a datetime format. From there, year was extracted from the release_date and turned into release year. After that, nulls were cleaned up from important columns such as budget, revenue, runtime and genres. From there, a new column was made to determine if a film was even up for nomination or not, and then if the film was a winner, it was changed to a binary classification system. Lastly, binning was performed on budget, runtime and revenue to further help the machine learning model. These three categories were binned into 'Low', 'Medium' and 'High' categories.

To further expand on the binning, the following are the ranges for each column:

Budget: Low: 0 to 5.200000e+06 ; Medium: 5.200000e+06  to 4.000000e+07 ; High: 4.000000e+07 to 3.800000e+08

Revenue: Low: 0 to 7.083172e+06 ; Medium: 7.083172e+06 to  1.000000e+08 ; High: 1.000000e+08 to 2.787965e+09

Runtime: Low: 0 to 95 ; Med: 95 to 120 ; High: 120 to 338


#### Machine Learning
Our machine learning models will leverage SciKitLearn and ImbalancedLearn Python packages. Due to the oscar imbalance, we will use random over/undersampling, SMOTE, Cluster Centroid Undersampling, and/or SMOTEEN.

#### Dashboard
We will leverage D3 Javascript/Tableau to create our dashboard to present our findings.

### Communication Protocols

We plan to meet once a week outside of our class time and on an adhoc basis where need be to discuss the progress of the project, any blockers, and to ensure the project is on track. To faciliate easy communication within the group, we create a slack channel for all team members.

We plan to meet once a week outside of our class time and on an adhoc basis where need be to discuss the progress of the project, any blockers, and to ensure the project is on track. To faciliate easy communication within the group, we created a slack channel for all team members.

### Presentation Slides

https://docs.google.com/presentation/d/1opc5KLKpjus9UlxG3wxBxZ-m9Nip0FbfC7nTA2BDFJ8/edit#slide=id.gfb441503e5_0_5
