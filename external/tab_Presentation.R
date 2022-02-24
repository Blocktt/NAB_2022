# function(){
#   tabPanel("Presentation",
#            # SideBar
#            sidebarLayout(
#              sidebarPanel(
# 
#              )##sidebarPanel~END
#              , mainPanel(
#                htmlOutput("doc")
#              )##mainPanel~END
# 
#            )##sidebarLayout~END
# 
#   )## tabPanel~END
# }##FUNCTION~END

function(){
  tabPanel("Presentation",
           fluidPage(
             htmlOutput("doc")
           ) #fluidPage ~ END
  )## tabPanel~END
}##FUNCTION~END