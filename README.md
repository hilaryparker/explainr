<!-- README.md is generated from README.Rmd. Please edit that file -->
explainr
========

### What is explainr?

**explainr** translates S3 objects into text using standard templates in a simple and convenient way.

For help with the **explainr** R-package, there is a vignette available in the /vignettes folder.

Installation
============

The package can be installed with

``` r
devtools::install_github("hilaryparker/explainr")
```

After installation, the package can be loaded into R.

``` r
library(explainr)
```

Using explainr
==============

The main function in the **explainr** package is `explain()`.

``` r
ptest <- prop.test(x = 500, n = 1008)
explain(ptest)
```

This was a one-sample proportion test of the null hypothesis that the true population proportion is equal to 0.5. Using a significance level of 0.05, we do not reject the null hypothesis, and cannot conclude that true population proportion is different than 0.5. The observed sample proportion is 0.496031746031746 (500 events out of a total sample size of 1,008).

The confidence interval for the true population proportion is (0.464746, 0.5273481). This interval will contain the true population proportion 95 times out of 100.

The p-value for this test is 0.8254979. This, formally, is defined as the probability -- if the null hypothesis is true -- of observing a sample proportion that is as or more extreme than the sample proportion from this data set. In this case, this is the probability -- if the true population proportion is 0.5 -- of observing a sample proportion that is greater than 0.503968253968254 or less than 0.496031746031746.

Bug reports
===========

Report bugs as issues on the [GitHub repository](https://github.com/hilaryparker/explainr)

Inspiration
===========

This project draws inspiration from the [CausalImpact package](https://github.com/google/CausalImpact).

Contributors
============

-   [Hilary Parker](https://github.com/hilaryparker)
-   [David Robinson](https://github.com/dgrtwo)
-   [Stephanie Hicks](https://github.com/stephaniehicks)
-   [Roger Peng](https://github.com/rdpeng)
