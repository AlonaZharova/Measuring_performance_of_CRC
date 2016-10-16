
[<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/banner.png" alt="Visit QuantNet">](http://quantlet.de/index.php?p=info)

## [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/qloqo.png" alt="Visit QuantNet">](http://quantlet.de/) **CRCtreemapebc** [<img src="https://github.com/QuantLet/Styleguide-and-Validation-procedure/blob/master/pictures/QN2.png" width="60" alt="Visit QuantNet 2.0">](http://quantlet.de/d3/ia)


```yaml


Name of QuantLet : CRCtreemapebc

Published in : CRC - Evaluating Research Performance of the Collaborative Research Center 649

Description : 'Produces the tree map of study decision of 117 alumnus of the Econ Boot Camp (EBC) from 
2008 to 2016'

Keywords : 'plot, tree map, analysis, descriptive, descriptive-methods, distribution, graphical 
representation, visualization, data visualization'

Author : Alona Zharova, Janine Tellinger-Rice, Wolfgang Karl Härdle

Submitted : Sun, October 16 2016 by Dominik Prugger, Alona Zharova

Datafile : 'CRCtreemapebc_data.csv - The data set contains the summarized information from a survey, 
hold by CRC 649 about the area of current (2016, March) study of participants of the EBC from 2008 
to 2016: titles of study areas, number of persons within each one and corresponding persentage'

Output : 'Tree map of study decision of 117 participants (alumnus) of the EBC from 2008 to 2016'


```

![Picture1](CRCtreemapebc.png)


```r

# Close windows and clear variables
graphics.off()
rm(list = ls(all = TRUE))

# Install packages / Load library
libraries = c("treemap")
lapply(libraries, function(x) if (!(x %in% installed.packages())) {install.packages(x)})
lapply(libraries, library, quietly = TRUE, character.only = TRUE)

# Load data
mydata = read.csv("CRCtreemapebc_data.csv", sep = ";")

# Set font and color for output, depending on choice
font           = "serif" # Font Times
res            = 300     # resolution
width          = 15      # width of plot pdf
height         = 10      # height of plot pdf

# Plot treemap
png(file = "CRCtreemapebc.png", width = width, height = height, units = "in", res = res, family = font)
treemap(mydata, index = "Subject", 
        vSize = "Percent", 
        vColor = "Percent", 
        type = "dens", 
        title = "Study decision of participants", 
        palette = "Blues", 
        fontsize.labels = 13, 
        title.legend = "Percentage"
        )
dev.off()


```
