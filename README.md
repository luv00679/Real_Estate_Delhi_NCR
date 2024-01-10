# Real Estate Data Analysis Project
## Overview
This project involves the analysis and visualization of real estate data obtained through web scraping. The dataset includes information about different properties, such as the number of bedrooms, total area, price, and facing direction. The goal is to explore the dataset, clean the data, and derive insights through various visualizations.

## Project Structure

The project is organized into several sections, each focusing on a specific aspect of the real estate dataset. It includes data loading, exploration, cleaning, and visualization using matplotlib.
Features

Loading: The dataset is loaded from a CSV file, assumed to be obtained through web scraping.

Data Exploration: Initial exploration is performed using head() and info() functions to understand the structure of the dataset.

Data Cleaning: NaN values and duplicate entries are removed from the dataset. Additionally, certain columns deemed irrelevant are dropped.

Data Filtering: Outliers are filtered based on the criteria of total area and property price.

Visualization: Various visualizations are created to provide insights into the dataset, including a histogram of houses by city, bedroom distribution, facing direction pie chart, and scatter plots showing the relationship between total area and price.

## Prerequisites
Data
    Python 3.x
    pandas
    matplotlib

## How to Use

    Ensure you have the required dependencies installed by running:

    bash
```
pip install pandas matplotlib
```
Clone the repository and navigate to the project directory.

Run the script:

bash
```
    python real_estate_analysis.py
```
    Review the generated plots for insights into the real estate market trends.

## Dataset

The dataset used in this project is obtained through web scraping. Ensure that your dataset follows a similar structure with columns such as "bedroom," "total_area," "Price," "facing," and "city."
## Additional Notes

    Customize the code to match the structure and specifics of your real estate dataset.
    Feel free to explore and enhance the script for more sophisticated analysis or additional features.
