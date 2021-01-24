# genomic_mining

This project is dedicated to the analysis of the results of a previous pipeline (see [this repo](https://github.com/xyloforce/genomic_landscapes)) for the data mining course.

## Install
Run :

```python
pip3 install jupyter sklearn matplotlib numpy pandas plotly
```

Metrics are in the `/metrics` folder save for two (`metrics_GC_gene.tsv` and `metrics_GC_exons.tsv`) which are not used in the first part of the script.

A R script is provided: it was used to generate plots on the data.

In case R is not installed, with apt as package manager:
```
sudo apt install r-base
```

To install the missing lib:
```r
install.packages("reshape2")
```
