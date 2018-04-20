# Stata Package skbuddy
Stata package designed to quickly export feature and target matrices as CSV for use with SciKit Learn. Designed for a State-Python side-by-side workflows.

## Usage

This package produces two csv files. The first with the suffix _X is intended to be used as a feature matrix with SciKit Learn. While the second with the suffix _y is intended to be used as a target matrix. [More inforamtion about the feature and target matricies](http://scikit-learn.org/stable/documentation.html) is over at [http://scikit-learn.org/stable/documentation.html](http://scikit-learn.org/stable/documentation.html).

[This Jupyter notebook](https://github.com/adamrossnelson/skbuddy/blob/master/git_demo.ipynb) demonstrates importing `skbuddy` output for use with SciKit Learn.

## Installation

At present, not planning to send to SSC for distribution. Available for install via:

```
net install skbuddy, from(https://raw.githubusercontent.com/adamrossnelson/skbuddy/master)
```

## Alternatives to skbuddy
The alternative to skbuddy would be to manually convert Stata `dta` files to `csv` or another format readily accessible in Python. A more direct option would be to use `pd.read_stata()`. For example:

```Python
import pandas as pd
import numpy as np
pd.set_option('display.max_rows', 8)

# Load example dta provided by Stata
exfile = pd.read_stata('http://www.stata-press.com/data/r15/auto2.dta')

# Define features and targets
X = exfile[['price','mpg','length']]
y = exfile[['foreign']]

# Use Scikit-Learn to fit a model
from sklearn.tree import DecisionTreeClassifier
clf = DecisionTreeClassifier(max_depth=4, criterion='entropy')
clf.fit(X, y)
```
