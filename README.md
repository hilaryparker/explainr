# explainr

### What is explainr?

**explainr** translates S3 objects into text using standard templates in a simple and convenient way. 

For help with the **explainr** R-package, there is a vignette available in the /vignettes folder.
  
# Installation

The package can be installed with

    devtools::install_github("hilaryparker/explainr")

After installation, the package can be loaded into R.

    library(explainr)

# Using explainr

The main function in the **explainr** package is `explain()`.  

```
prop.test(x = 500, n = 1008) %>% 
    explain()
```

# Bug reports
Report bugs as issues on the [GitHub repository](https://github.com/hilaryparker/explainr)

# Contributors

* [Hilary Parker](https://github.com/hilaryparker)
* [David Robinson](https://github.com/dgrtwo)
* [Stephanie Hicks](https://github.com/stephaniehicks)
* [Roger Peng](https://github.com/rdpeng)

