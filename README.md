# OT_FoodSim

## Install
To reproduce the experiments, you can simply clone this repository and install the requierements in a new virtual env as follows:

```
git clone FloAI/OT_FoodSim
cd OT_FoodSim
python3 -m venv hsr
source hsr/bin/activate (or ./hsr/Script/activate given your setup)
pip install -r requirements.txt
```

## Repository Structure

The `OT_FoodSim` repository is organized as follows:

- **Data/**  
  Contains the datasets used in the project. You can store CSVs or other data files here for analysis.  

- **LICENSE**  
  The repository license file.  

- **Openfoodfacts_code.ipynb**  
  A Jupyter Notebook for exploring and running Optimal Transport simulations on the nutriscore dataset.  

- **Predict_OT.R**  
  An R script to perform predictions using Optimal Transport.  

- **README.md**  
  This file, providing an overview of the repository, instructions, and documentation.  

- **mydata.csv**  
  The results of my data merging recoding problem solved on the datasets.  

Each file and folder is intended to separate data, scripts, and documentation, making the repository easier to navigate and maintain.


### Algorithm implementation and evaluation

In this study were implemented in Python using the scikit-learn library. For each algorithm, the implementation strategy depended on the availability and influence of hyperparameters. Algorithms with fixed or minimal hyperparameter configurations (e.g., Linear Regression) were applied using their default settings. In contrast, algorithms with tunable hyperparameters underwent a grid search with cross-validation to identify the optimal parameter values.

It is also important to note that data standardization was applied, which was useful depending on the algorithm’s sensitivity to feature scaling. While standardization had negligible impact on scale-invariant models such as Linear Regression and Decision Tree Regression, it was essential for distance-based and margin-based methods, including K-Nearest Neighbors and Support Vector Machines.

For the fine-tuning implementation, we used the OpenFoodFacts dataset to learn the Nutri-Scores. Our neural network results were obtained using Defazio et al. [Schedule-Free optimizer](https://github.com/facebookresearch/schedule_free).
Another part of algorithms were implemented using R. The OTrecod library. 

## Citation

If you find this repository useful in your research, please consider citing our paper.

```
{
Not yet published
}
```

## Contact
For questions or feedback, please contact: [Flore N.](fnkamsug@math.univ-toulouse.fr)


