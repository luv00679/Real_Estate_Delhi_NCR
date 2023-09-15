# Real_Estate_Delhi_NCR
This repository contains code for web scraping real estate data from Magicbricks.com using Python, followed by data analysis and visualization in R using the tidyverse package.
## Python Web Scraping (Python Script: web.py)
In this part of the project, Python is used to scrape real estate data from Magicbricks.com. The following libraries are used:

    BeautifulSoup from bs4
    pandas
    requests
    Selenium
### Prerequisites
Before running the script, make sure to install the necessary Python packages using the following commands:
```
pip install beautifulsoup4
pip install pandas
pip install requests
pip install selenium
```
### Usage
The script scrapes real estate data, including property name, price, rate, and various property details, from multiple pages of Magicbricks.com.
The data is then cleaned and structured into a DataFrame.
The DataFrame is saved to a CSV file named real_estate_1.csv.

## R Data Analysis and Visualization (R Script: land.R)
In this part of the project, R is used to analyze and visualize the real estate data that was scraped and saved in the previous step.
### Prerequisites
Before running the R script, make sure to install the required R packages using the following commands:
```
install.packages("tidyverse")
install.packages("stringr")
```
### Usage
The R script reads the previously saved CSV file real_estate_1.csv.
Data analysis and visualization are performed using the tidyverse package for data manipulation and ggplot2 for creating plots.
### Key Visualizations
    Scatter plots comparing price and various property attributes.
    Bar charts showing property counts based on the number of bedrooms and the city.
    Histograms for visualizing price distributions in different cities.
    Calculations of average prices for properties with different numbers of bedrooms.

Please note that the Python script is responsible for collecting the data, while the R script focuses on data analysis and visualization. Both scripts should be used in conjunction to get a comprehensive understanding of the real estate market data.

Feel free to adapt and extend this code for your own real estate data analysis project.
