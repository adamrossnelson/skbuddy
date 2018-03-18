# Stata Package skbuddy
Stata package designed to quickly export feature and target matrices as CSV for use with SciKit Learn.

## Usage

This package produces two csv files. The first with the suffix _X is intended to be used as a feature matrix with SciKit Learn. While the second with the suffix _y is intended to be used as a target matrix. [More inforamtion about the feature and target matricies](http://scikit-learn.org/stable/documentation.html) is over at [http://scikit-learn.org/stable/documentation.html](http://scikit-learn.org/stable/documentation.html).

[This Jupyter notebook](https://github.com/adamrossnelson/skbuddy/blob/master/git_demo.ipynb) demonstrates importing `skbuddy` output for use with SciKit Learn.

## Installation

At present, not planning to send to SSC for distribution. Available for install via:

```
net install skbuddy, from(https://raw.githubusercontent.com/adamrossnelson/skbuddy/master)
```

