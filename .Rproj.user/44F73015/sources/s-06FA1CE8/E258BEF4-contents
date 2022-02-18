# Shiny Global File

# Packages
library(shiny)
library(DT)
library(ggplot2)
library(readxl)
library(reshape2)
library(dplyr)
library(utils)
library(BioMonTools)
library(knitr)
library(maps)
library(rmarkdown)
library(markdown)
library(tidyr)
library(leaflet)
library(shinyjs) # used for download button enable
library(mapview) # used to download leaflet map
library(stringr)
library(shinythemes)
library(capture)


# Drop-down boxes
MMI <- "IEPA_2021_Bugs"


# File Size
# By default, the file size limit is 5MB. It can be changed by
# setting this option. Here we'll raise limit to 10MB.
options(shiny.maxRequestSize = 25*1024^2)


# define which metrics to keep in index

BugMetrics <- c("pt_EPT"
                ,"pt_Odon"
                ,"pi_Tanyp2Chi"
                ,"pi_tv_toler"
                ,"pt_ffg_shred")# END BugMetrics


#### GIS/Map data ####

dir_data <- file.path(".","GIS_Data")

## Illinois 2021 Bug IBI Site Classes
IL_BugClasses <- rgdal::readOGR(file.path(dir_data, "IEPA_SiteClasses.shp"))

