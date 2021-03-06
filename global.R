# Shiny Global File

# Packages

library(shiny)
library(ggplot2)
library(DT)
# library(reshape2)
library(dplyr)
library(utils)
library(knitr)
library(maps)
library(rmarkdown)
library(markdown)
library(tidyr)
library(leaflet)
# library(shinyjs) # used for download button enable
# library(stringr)
library(shinythemes)
library(plotly)

# import data ####
df_data<-read.csv("Data/SNEP_Data_Trim_4Example_20220223.csv")

df_trim <- df_data %>% 
  select(BenSampID
                ,Station_ID
                ,Region
                ,DistCat
                ,Longitude
                ,Latitude
                ,IBI_Score
                ,CollDate
                ,SC_pt_POET
                ,SC_pt_ffg_pred
                ,SC_pt_NonIns
                ,SC_pi_OET
                ,SC_pt_tv_toler
                ,SC_pt_volt_semi
                ,MSST_avg
                ,Precip8110Cat
                ,Tmean8110Cat
                ,IWI_21
                ,PctHayCrop2016Ws
                ,HabitatScore
                ,SpecConductivity)

df_trim$DistCat <- factor(df_trim$DistCat, levels = c("Ref", "MidStrs", "HighStrs"))

#### GIS/Map data ####
# 
# dir_data <- file.path(".","GIS_Data")
# 
# ## Illinois 2021 Bug IBI Site Classes
# IL_BugClasses <- rgdal::readOGR(file.path(dir_data, "IEPA_SiteClasses.shp"))

