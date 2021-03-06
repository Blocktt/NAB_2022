function(){
  tabPanel("Data Visualization"
           , titlePanel("Explore the project data!")
           , sidebarLayout(
             sidebarPanel(
               helpText("The information presented here represents",
                        "paired macroinvertebrate and environmental data.")
               ,selectInput(inputId = "Enviro_Choice1"
                            ,label = "Environmental Parameter:"
                            ,choices = c("MSST_avg"
                                         ,"Precip8110Cat"
                                         ,"Tmean8110Cat"
                                         ,"IWI_21"
                                         ,"PctHayCrop2016Ws"
                                         ,"HabitatScore"
                                         ,"SpecConductivity")) # selectInput
               
               ,selectInput(inputId = "Bug_Choice1"
                            ,label = "Macroinvertebrate Parameter:"
                            ,choices = c("IBI_Score"
                                         ,"SC_pt_POET"
                                         ,"SC_pt_ffg_pred"
                                         ,"SC_pt_NonIns"
                                         ,"SC_pi_OET"
                                         ,"SC_pt_tv_toler"
                                         ,"SC_pt_volt_semi")) # selectInput
               ,leafletOutput("mymap")

             )##sidebarPanel.END
             , mainPanel(
               plotlyOutput(outputId = "S_R_Plot")
               , br()
               , DT::dataTableOutput("mytable")

             )##mainPanel.END
           )#sidebarLayout.End
  )## tabPanel~END
}##FUNCTION~END
