suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Word Predictor",
                   tabPanel("Predict the Next Word",
                            
                            # Sidebar
                              sidebarLayout(
                              sidebarPanel(
                                helpText("Enter a partially complete sentence to begin the next word prediction"),
                                textInput("inputString", "Enter a partial sentence here",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                                ),
                              mainPanel(
                                  h2("Predicted Word"),
                                  verbatimTextOutput("prediction"),
                                  strong("Input:"),
                                 
                                  textOutput('text1'),
                                  br(),
                                  strong("Note:"),
                                  textOutput('text2')
                              )
                              )
                             
                  ),
                   tabPanel("About",
                            mainPanel(
                              img(src = "./headers.png"),
                              includeMarkdown("about.md")
                            )
                   )
)
)