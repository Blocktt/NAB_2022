#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

# Source Pages ####

# Load files for individual screens

tab_Intro <- source("external/tab_Intro.R", local = TRUE)$value
tab_Presentation <- source("external/tab_Presentation.R", local = TRUE)$value
tab_ProjSum <- source("external/tab_ProjSum.R", local = TRUE)$value
tab_DataViz <- source("external/tab_DataViz.R", local = TRUE)$value
tab_StoryMap <- source("external/tab_StoryMap.R", local = TRUE)$value

# Define UI
shinyUI(navbarPage(theme = shinytheme("flatly")
                   ,"R Shiny & R Markdown: The Death of MS Word"
                   ,tab_Intro()
                   ,tab_Presentation()
                   ,tab_ProjSum()
                   ,tab_DataViz()
                   ,tab_StoryMap()
      )## navbarPage~END
)## shinyUI~END
