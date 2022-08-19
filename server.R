library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(shinytitle)


shinyServer(function(input, output, session) {
  
  change_window_title(session, title = "YuHtzee")
  
  output$separator <- renderText({
    paste("-----------------------------------------------------------------------------")
  })
  
  output$yuhtzee = renderText({
    paste0("YuHtzee - Yahtzee Score keeper app")
  })
  output$player1page <- renderUI({
    tabsetPanel(
      #### Player 1 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 1 name", placeholder = "Player 1 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               )
      ),
      #### Player 1 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 1", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field1", label = NULL, width = "100%")
                 )
                 
               )
      )
      
    )
  })
 
  output$player2page <- renderUI({
    tabsetPanel(
      #### Player 2 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 2 name", placeholder = "Player 2 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
               )
                 
      ),
      #### Player 2 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 2", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field2", label = NULL, width = "100%")
                 )
                 
               )
      ),
      
    )
  })
  
  output$player3page <- renderUI({
    tabsetPanel(
      #### Player 3 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 3 name", placeholder = "Player 3 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               )
      ),
      #### Player 3 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 3", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field3", label = NULL, width = "100%")
                 )
                 
               )
      ),
      
    )
  })
  output$player4page <- renderUI({
    tabsetPanel(
      #### Player 4 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 4 name", placeholder = "Player 4 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field4_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field4_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field4_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field4_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field4_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               )
      ),
      #### Player 4 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 4", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field4", label = NULL, width = "100%")
                 )
                 
               )
      ),
      
    )
  })
  output$player5page <- renderUI({
    tabsetPanel(
      #### Player 5 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 5 name", placeholder = "Player 5 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               )
      ),
      #### Player 5 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 5", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field5", label = NULL, width = "100%")
                 )
                 
               )
      ),
      
    )
  })
  
  output$player6page <- renderUI({
    tabsetPanel(
      #### Player 6 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 6 name", placeholder = "Player 6 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               )
      ),
      #### Player 6 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 6", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field6", label = NULL, width = "100%")
                 )
                 
               )
      ),
      
    )
  })
  output$player7page <- renderUI({
    tabsetPanel(
      #### Player 7 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 7 name", placeholder = "Player 7 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               )
      ),
      #### Player 7 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 7", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field7", label = NULL, width = "100%")
                 )
                 
               )
      ),
      
    )
  })
  output$player8page <- renderUI({
    tabsetPanel(
      #### Player 8 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 8 name", placeholder = "Player 8 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               )
      ),
      #### Player 8 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 8", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field8", label = NULL, width = "100%")
                 )
                 
               )
      ),
      
    )
  })
  output$player9page <- renderUI({
    tabsetPanel(
      #### Player 9 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 9 name", placeholder = "Player 9 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               )
      ),
      #### Player 9 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 9", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field9", label = NULL, width = "100%")
                 )
                 
               )
      ),
      
    )
  })
  output$player10page <- renderUI({
    tabsetPanel(
      #### Player 10 upper ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Upper")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 10 name", placeholder = "Player 10 name", value = "")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "============================") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 1", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 2", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 3", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 4",  width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 5", width = "100%", value = "====")
                 ),
                 column(
                   width = 1,
                   textInput("field_rules", label = "Game 6",  width = "100%", value = "====")
                 )
               ),
               fluidRow(
                 
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Aces = 1",
                                 icon = icon("dice-one"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Ace's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Twos = 2",
                                 icon = icon("dice-two"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Two's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Threes = 3",
                                 icon = icon("dice-three"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Three's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fours = 4",
                                 icon = icon("dice-four"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Four's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Fives = 5",
                                 icon = icon("dice-five"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Five's only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInputIcon("field_rules", label = NULL, value = "Sixes = 6",
                                 icon = icon("dice-six"))
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Sixes only") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Total Score")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "BONUS if Total Score is 63 or more")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 35 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "TOTAL of Upper section")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               )
      ),
      #### Player 10 lower ----
      tabPanel(tags$b(tags$span(style = "color: purple", "Lower")),
               
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = "Player 10", value = "3 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = "How to Score", value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = "Game 1", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = "Game 2", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = "Game 3", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = "Game 4", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = "Game 5", width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = "Game 6", width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "4 of a Kind")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Add Total of All Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Full House")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 25 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Small Straight (Sequence of 4)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 30 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Large Straight (Sequence of 5)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 40 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee (5 of a Kind)")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 50 points") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Chance")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score Total of ALL 5 Dices") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Yahtzee Bonus")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "Score 100 points for EACH Bonus") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Lower Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "Upper Section Total")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "==============>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               ),
               fluidRow(
                 column(
                   width = 3,
                   offset = 0,
                   textInput("field_rules", label = NULL, value = "GRAND TOTAL")
                 ),
                 column(
                   width = 3,
                   textInput("field_rules", label = NULL, value = "=========================>") # Score for this round:
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 ),
                 column(
                   width = 1,
                   textInput("field10", label = NULL, width = "100%")
                 )
                 
               )
      ),
      
    )
  })
  #### End ----
})
