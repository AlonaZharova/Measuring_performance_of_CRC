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


