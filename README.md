# well_log_clustering using k-mean, Spectral, Gaussian mixture, etc. 

In this package, I use MATLAB for data cleaning and clustering on more than 20 wells. Make sure to see the PDF file provided for all the visualizations.

Contributors are welcome to include other datasets, other clustering and regression methods, and converting the code to other programming languages. 
This work is not published yet, but we have other publications associated with these data. The PDF files are included. Please cite the following papers if you use the methodology presented here.

Salahshoor, A., Gaeini, A., Shahin, A., Karami, M., Designing an Ensemble model for hydrocarbon reservoir Permeability prediction by petrophysical lithology Labeling, 2022, Journal of Petroleum Geomechanics, Vol. 4, Issue 2, Pg. 56-69, https://www.irpga-journal.ir/article_143422.html?lang=en
Salahshoor, A., Gaeini, A., Shahin, A., Karami, M., Reservoir Characterization Clustering Analysis to Identify Rock Type Using KMEANS Method in South-West Iranian Oil Field, 2022, Journal of Petroleum Geomechanics, Vol. 4, Issue 2, Pg. 42-55, http://www.irpga-journal.ir/article_143421.html?lang=en

These are the steps that I have followed to create this repository:

Steps:

1) Load CSV file of the well logs including Depth, DT, RHOB, SGR, NPHI, PEF, RT. 
2) Remove outliers and nulls (See instruction below).
3) Rescaling data to [0 1]
4) Exploratory data analysis (EDA). 
5) I do different types of clustering (KNN, Kmean, Spectral, GMM, DBSCAN). Will try 4 and 5 clutters and see which one is better justified. The first column named "Depth" is not included for clustering. I will cluster based on these columns (DT, RHOB, SGR, NPHI, PEF).

6) Visualize the outcome of different clustering techniques and show some metrics/score. 

7) Label the original data with clusters labels (1, 2, 3, 4, 5)  by adding an extra column to the data frame.


Instruction to remove outlier and/or null values. Whenever any of these conditions are satisfied, I deleted the entire row.

DT smaller than 0 || DT greater than 100
NPHI smaller than -0.1 || NPHI greater than 0.45
RHOB smaller than 2.0 || RHOB greater than 3.0
PEF smaller than 0.0 || PEF greater than 7.0
RT smaller than 0.0 || RT greater than 2000
GR smaller than 0 || GR greater than150
