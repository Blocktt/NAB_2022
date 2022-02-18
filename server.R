#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
# Define server logic

# import data ####
# df_nuts<-read.csv("Data/nutrients_wide01102022.csv")
# df_strs_respon <-read.csv("Data/NH_Strs_Resp_Data_20220218.csv")

server <- function(input, output, session) {
  
  
  # Presentation ####

  getPageDoc <- function() {
    return(includeHTML("www/gesrmarkdown.html"))
  }
  output$doc <- renderUI({
    getPageDoc()
  })
  
  
  # StoryMaps ####
  
  ## Technical ####
  #https://stackoverflow.com/questions/33020558/embed-iframe-inside-shiny-app
  #https://stackoverflow.com/questions/59628035/r-shiny-how-to-fill-out-the-entire-space-of-the-browser-window-with-an-iframe
  output$StoryMap_Tech <- renderUI({
    Technical <- paste0("https://storymaps.arcgis.com/stories/f8d9ce1ca4a24bcda99c1b780ae85179")
    # my_test <- tags$iframe(src=test, height=800, width=1535)
    my_Technical <- tags$iframe(src=Technical, style='width:90vw;height:90vh;')
    my_Technical
  })## renderUI ~ END
  
  output$StoryMap_NonTech <- renderUI({
    NonTechnical <- paste0("https://storymaps.arcgis.com/stories/a70626f4c03e425ea9b3eecc5098f54b")
    # my_test <- tags$iframe(src=test, height=800, width=1535)
    my_NonTechnical <- tags$iframe(src=NonTechnical, style='width:90vw;height:90vh;')
    my_NonTechnical
  })## renderUI ~ END
}