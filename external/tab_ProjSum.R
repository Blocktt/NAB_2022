# function(){
#   tabPanel("Project Summary",
#            # SideBar
#            sidebarLayout(
#              sidebarPanel(
# 
#              )##sidebarPanel~END
#              , mainPanel(
#                
#                tags$iframe(style="height:400px; width:100%; scrolling=yes", 
#                            src="test.pdf")
#              
#              )##mainPanel~END
# 
#            )##sidebarLayout~END
# 
#   )## tabPanel~END
# }##FUNCTION~END

function(){
  tabPanel("Project Summary",
           fluidPage(
             tags$iframe(style="height:800px; width:100%; scrolling=yes",
                                                    src="test.pdf")
           )##fluidPage ~END
  )## tabPanel~END
}##FUNCTION~END