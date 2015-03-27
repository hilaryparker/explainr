# explainr

### What is explainr?

**explainr** translates S3 objects into text using standard templates in a simple and convenient way. 

For help with the **explainr** R-package, there is a vignette available in the /vignettes folder.
  
# Installation

First install the package's requirements (requires devtools):

devtools::install_github("dgrtwo/broom")
devtools::install_github("dgrtwo/biobroom")

Then the package can be installed with

devtools::install_github("hilaryparker/explainr")

After installation, the package can be loaded into R.
```s
library(explainr)
```

# Using explainr

The main function in the **explainr** package is `explain()`.  

```
heads <- rbinom(1, size = 100, prob = .5)
ptest <- prop.test(heads, 100)    
explain(ptest)
```

# Bug reports
Report bugs as issues on the [GitHub repository](https://github.com/hilaryparker/explainr)

# Contributors

* [Hilary Parker](https://github.com/hilaryparker)
* [David Robinson](https://github.com/dgrtwo)
* [Stephanie Hicks](https://github.com/stephaniehicks)

