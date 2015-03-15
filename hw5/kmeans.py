#!/usr/bin/python
import numpy as np
from sklearn.cluster import KMeans

# 10 initial centroids to use (fixed)
x = np.array([[25,125],[44,105],[29,97],[35,63],[42,57],[55,63],[23,40],[33,22],[55,20],[64,37]])

# The 10 centroids plus 10 other points we want to compute assignments for
data = [[25,125],[44,105],[29,97],[35,63],[42,57],[55,63],[23,40],[33,22],[55,20],[64,37], [28,145], [65,140], [50,130], [55,118], [38,115], [50,90], [63,88], [43,83], [50,60], [50,30]]

# Initialize k-means with the 10 centroids in x, and run max_iter times
kmeans = KMeans(init=x, n_clusters=10, n_init=1, max_iter=1)

kmeans.fit(data)
print "After 1 iteration, we have point-to-cluster labels:"
print kmeans.labels_

print "With clusters at the following locations:"
print kmeans.cluster_centers_

print "And predictions:"
print kmeans.predict(data)
