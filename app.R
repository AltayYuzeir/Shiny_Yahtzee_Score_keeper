library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(shinytitle)
library(shinyStorePlus)
library(shinyjs)

#### Top level ----
ui = dashboardPage(
  skin = "purple",
  title = use_shiny_title(),
  header = dashboardHeader(
    title = "YuHtzee",
    tags$li(class = "dropdown",
            bootstrapPage(h4(
              htmlOutput("yuhtzee", container = span)
            )),
            tags$head(
              tags$style("#yuhtzee{color: white;
                                 font-size: 20px;
                                 font-style: ;
                                 font-family: ;
                                 }") # font-style: italic;
            )),
    tags$li(class = "dropdown",
            bootstrapPage(h4(
              textOutput("separator")
            )),
            tags$head(
              tags$style("#separator{color: #605CA8;
                                 font-size: 16px;
                                 }")
            ))
  ),
  sidebar = dashboardSidebar(
    
    sidebarMenu(
      br(),
      img(src = "YuHtzee-logo.png", height = "100%", width = "50%",
          style="display: block; margin-left: auto; margin-right: auto;"),
      hr(style = "border-top: 1px solid #ffffff;"),
      menuItem(
        text = "Player 1 - Dog",
        tabName = "player1",
        icon = icon("dog")
      ),
      menuItem(
        text = "Player 2 - Cat",
        tabName = "player2",
        icon = icon("cat")
      ),
      menuItem(
        text = "Player 3 - Fish",
        tabName = "player3",
        icon = icon("fish-fins")
      ),
      menuItem(
        text = "Player 4 - Otter",
        tabName = "player4",
        icon = icon("otter")
      ),
      menuItem(
        text = "Player 5 - Dove",
        tabName = "player5",
        icon = icon("dove")
      ),
      menuItem(
        text = "Player 6 - Horse",
        tabName = "player6",
        icon = icon("horse")
      ),
      menuItem(
        text = "Player 7 - Dragon",
        tabName = "player7",
        icon = icon("dragon")
      ),
      menuItem(
        text = "Player 8 - Hippo",
        tabName = "player8",
        icon = icon("hippo")
      ),
      menuItem(
        text = "Player 9 - Frog",
        tabName = "player9",
        icon = icon("frog")
      ),
      menuItem(
        text = "Player 10 - Cow",
        tabName = "player10",
        icon = icon("cow")
      )
    ),
    hr(style = "border-top: 1px solid #ffffff;"),
    div(style="text-align:center; color: #00c0ef", tags$b("Copyright"),icon("copyright"),
        tags$b("2022-2022"),br(), tags$b("Altay Yuzeir"))
    
  ),
  
  body = dashboardBody(
    tags$head(
      tags$style(
        type = "text/css",
        "
             #loadmessage {
               position: fixed;
               top: 0px;
               left: 0px;
               width: 100%;
               padding: 5px 0px 5px 0px;
               text-align: center;
               font-weight: bold;
               font-size: 100%;
               color: #000000;
               background-color: #cccc00;
               z-index: 105;
             }
          "
      )
    ),
    # conditionalPanel(condition = "$('html').hasClass('shiny-busy')",
    #                  tags$div("Loading...", id = "loadmessage")),
    useShinyjs(),
    initStore(),
    tabItems(
      tabItem(tabName = "player1", 
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
                             textInput("field1_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_6", label = NULL, width = "100%")
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
                             textInput("field1_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_12", label = NULL, width = "100%")
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
                             textInput("field1_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_18", label = NULL, width = "100%")
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
                             textInput("field1_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_24", label = NULL, width = "100%")
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
                             textInput("field1_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_30", label = NULL, width = "100%")
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
                             textInput("field1_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_36", label = NULL, width = "100%")
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
                             textInput("field1_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_42", label = NULL, width = "100%")
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
                             textInput("field1_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_48", label = NULL, width = "100%")
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
                             textInput("field1_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 1 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear1", "Clear Player 1 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear1confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear1cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll1", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll1confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll1cancel")
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
                             textInput("field1_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_60", label = "Game 6", width = "100%")
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
                             textInput("field1_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_66", label = NULL, width = "100%")
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
                             textInput("field1_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_72", label = NULL, width = "100%")
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
                             textInput("field1_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_78", label = NULL, width = "100%")
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
                             textInput("field1_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_84", label = NULL, width = "100%")
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
                             textInput("field1_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_90", label = NULL, width = "100%")
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
                             textInput("field1_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_96", label = NULL, width = "100%")
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
                             textInput("field1_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_102", label = NULL, width = "100%")
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
                             textInput("field1_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_108", label = NULL, width = "100%")
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
                             textInput("field1_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_114", label = NULL, width = "100%")
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
                             textInput("field1_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field1_120", label = NULL, width = "100%")
                           )
                           
                         )
                )
                
                
              )),
      tabItem(tabName = "player2", 
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
                             textInput("field2_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_6", label = NULL, width = "100%")
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
                             textInput("field2_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_12", label = NULL, width = "100%")
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
                             textInput("field2_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_18", label = NULL, width = "100%")
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
                             textInput("field2_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_24", label = NULL, width = "100%")
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
                             textInput("field2_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_30", label = NULL, width = "100%")
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
                             textInput("field2_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_36", label = NULL, width = "100%")
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
                             textInput("field2_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_42", label = NULL, width = "100%")
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
                             textInput("field2_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_48", label = NULL, width = "100%")
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
                             textInput("field2_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 2 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear2", "Clear Player 2 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear2confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear2cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll2", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll2confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll2cancel")
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
                             textInput("field2_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_60", label = "Game 6", width = "100%")
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
                             textInput("field2_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_66", label = NULL, width = "100%")
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
                             textInput("field2_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_72", label = NULL, width = "100%")
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
                             textInput("field2_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_78", label = NULL, width = "100%")
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
                             textInput("field2_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_84", label = NULL, width = "100%")
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
                             textInput("field2_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_90", label = NULL, width = "100%")
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
                             textInput("field2_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_96", label = NULL, width = "100%")
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
                             textInput("field2_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_102", label = NULL, width = "100%")
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
                             textInput("field2_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_108", label = NULL, width = "100%")
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
                             textInput("field2_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_114", label = NULL, width = "100%")
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
                             textInput("field2_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field2_120", label = NULL, width = "100%")
                           )
                           
                         )
                )
                
                
              )),
      tabItem(tabName = "player3", 
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
                             textInput("field3_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_6", label = NULL, width = "100%")
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
                             textInput("field3_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_12", label = NULL, width = "100%")
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
                             textInput("field3_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_18", label = NULL, width = "100%")
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
                             textInput("field3_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_24", label = NULL, width = "100%")
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
                             textInput("field3_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_30", label = NULL, width = "100%")
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
                             textInput("field3_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_36", label = NULL, width = "100%")
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
                             textInput("field3_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_42", label = NULL, width = "100%")
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
                             textInput("field3_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_48", label = NULL, width = "100%")
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
                             textInput("field3_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 3 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear3", "Clear Player 3 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear3confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear3cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll3", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll3confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll3cancel")
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
                             textInput("field3_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_60", label = "Game 6", width = "100%")
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
                             textInput("field3_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_66", label = NULL, width = "100%")
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
                             textInput("field3_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_72", label = NULL, width = "100%")
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
                             textInput("field3_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_78", label = NULL, width = "100%")
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
                             textInput("field3_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_84", label = NULL, width = "100%")
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
                             textInput("field3_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_90", label = NULL, width = "100%")
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
                             textInput("field3_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_96", label = NULL, width = "100%")
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
                             textInput("field3_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_102", label = NULL, width = "100%")
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
                             textInput("field3_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_108", label = NULL, width = "100%")
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
                             textInput("field3_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_114", label = NULL, width = "100%")
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
                             textInput("field3_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field3_120", label = NULL, width = "100%")
                           )
                           
                         )
                )
                
                
              )),
      tabItem(tabName = "player4", 
              
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
                             textInput("field4_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_6", label = NULL, width = "100%")
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
                             textInput("field4_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_12", label = NULL, width = "100%")
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
                             textInput("field4_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_18", label = NULL, width = "100%")
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
                             textInput("field4_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_24", label = NULL, width = "100%")
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
                             textInput("field4_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_30", label = NULL, width = "100%")
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
                             textInput("field4_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_36", label = NULL, width = "100%")
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
                             textInput("field4_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_42", label = NULL, width = "100%")
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
                             textInput("field4_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_48", label = NULL, width = "100%")
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
                             textInput("field4_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 4 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear4", "Clear Player 4 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear4confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear4cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll4", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll4confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll4cancel")
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
                             textInput("field4_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_60", label = "Game 6", width = "100%")
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
                             textInput("field4_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_66", label = NULL, width = "100%")
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
                             textInput("field4_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_72", label = NULL, width = "100%")
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
                             textInput("field4_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_78", label = NULL, width = "100%")
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
                             textInput("field4_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_84", label = NULL, width = "100%")
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
                             textInput("field4_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_90", label = NULL, width = "100%")
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
                             textInput("field4_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_96", label = NULL, width = "100%")
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
                             textInput("field4_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_102", label = NULL, width = "100%")
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
                             textInput("field4_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_108", label = NULL, width = "100%")
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
                             textInput("field4_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_114", label = NULL, width = "100%")
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
                             textInput("field4_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field4_120", label = NULL, width = "100%")
                           )
                           
                         )
                )
                
                
              )),
      tabItem(tabName = "player5", 
              
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
                             textInput("field5_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_6", label = NULL, width = "100%")
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
                             textInput("field5_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_12", label = NULL, width = "100%")
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
                             textInput("field5_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_18", label = NULL, width = "100%")
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
                             textInput("field5_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_24", label = NULL, width = "100%")
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
                             textInput("field5_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_30", label = NULL, width = "100%")
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
                             textInput("field5_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_36", label = NULL, width = "100%")
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
                             textInput("field5_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_42", label = NULL, width = "100%")
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
                             textInput("field5_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_48", label = NULL, width = "100%")
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
                             textInput("field5_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 5 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear5", "Clear Player 5 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear5confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear5cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll5", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll5confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll5cancel")
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
                             textInput("field5_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_60", label = "Game 6", width = "100%")
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
                             textInput("field5_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_66", label = NULL, width = "100%")
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
                             textInput("field5_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_72", label = NULL, width = "100%")
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
                             textInput("field5_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_78", label = NULL, width = "100%")
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
                             textInput("field5_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_84", label = NULL, width = "100%")
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
                             textInput("field5_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_90", label = NULL, width = "100%")
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
                             textInput("field5_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_96", label = NULL, width = "100%")
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
                             textInput("field5_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_102", label = NULL, width = "100%")
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
                             textInput("field5_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_108", label = NULL, width = "100%")
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
                             textInput("field5_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_114", label = NULL, width = "100%")
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
                             textInput("field5_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field5_120", label = NULL, width = "100%")
                           )
                           
                         )
                )
                
                
              )),
      tabItem(tabName = "player6", 
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
                             textInput("field6_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_6", label = NULL, width = "100%")
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
                             textInput("field6_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_12", label = NULL, width = "100%")
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
                             textInput("field6_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_18", label = NULL, width = "100%")
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
                             textInput("field6_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_24", label = NULL, width = "100%")
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
                             textInput("field6_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_30", label = NULL, width = "100%")
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
                             textInput("field6_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_36", label = NULL, width = "100%")
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
                             textInput("field6_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_42", label = NULL, width = "100%")
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
                             textInput("field6_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_48", label = NULL, width = "100%")
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
                             textInput("field6_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 6 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear6", "Clear Player 6 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear6confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear6cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll6", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll6confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll6cancel")
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
                             textInput("field6_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_60", label = "Game 6", width = "100%")
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
                             textInput("field6_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_66", label = NULL, width = "100%")
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
                             textInput("field6_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_72", label = NULL, width = "100%")
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
                             textInput("field6_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_78", label = NULL, width = "100%")
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
                             textInput("field6_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_84", label = NULL, width = "100%")
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
                             textInput("field6_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_90", label = NULL, width = "100%")
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
                             textInput("field6_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_96", label = NULL, width = "100%")
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
                             textInput("field6_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_102", label = NULL, width = "100%")
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
                             textInput("field6_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_108", label = NULL, width = "100%")
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
                             textInput("field6_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_114", label = NULL, width = "100%")
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
                             textInput("field6_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field6_120", label = NULL, width = "100%")
                           )
                           
                         )
                         
                )
                
                
              )),
      tabItem(tabName = "player7", 
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
                             textInput("field7_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_6", label = NULL, width = "100%")
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
                             textInput("field7_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_12", label = NULL, width = "100%")
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
                             textInput("field7_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_18", label = NULL, width = "100%")
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
                             textInput("field7_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_24", label = NULL, width = "100%")
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
                             textInput("field7_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_30", label = NULL, width = "100%")
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
                             textInput("field7_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_36", label = NULL, width = "100%")
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
                             textInput("field7_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_42", label = NULL, width = "100%")
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
                             textInput("field7_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_48", label = NULL, width = "100%")
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
                             textInput("field7_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 7 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear7", "Clear Player 7 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear7confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear7cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll7", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll7confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll7cancel")
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
                             textInput("field7_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_60", label = "Game 6", width = "100%")
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
                             textInput("field7_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_66", label = NULL, width = "100%")
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
                             textInput("field7_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_72", label = NULL, width = "100%")
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
                             textInput("field7_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_78", label = NULL, width = "100%")
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
                             textInput("field7_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_84", label = NULL, width = "100%")
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
                             textInput("field7_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_90", label = NULL, width = "100%")
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
                             textInput("field7_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_96", label = NULL, width = "100%")
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
                             textInput("field7_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_102", label = NULL, width = "100%")
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
                             textInput("field7_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_108", label = NULL, width = "100%")
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
                             textInput("field7_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_114", label = NULL, width = "100%")
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
                             textInput("field7_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field7_120", label = NULL, width = "100%")
                           )
                           
                         )
                )
                
                
              )),
      tabItem(tabName = "player8", 
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
                             textInput("field8_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_6", label = NULL, width = "100%")
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
                             textInput("field8_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_12", label = NULL, width = "100%")
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
                             textInput("field8_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_18", label = NULL, width = "100%")
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
                             textInput("field8_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_24", label = NULL, width = "100%")
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
                             textInput("field8_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_30", label = NULL, width = "100%")
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
                             textInput("field8_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_36", label = NULL, width = "100%")
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
                             textInput("field8_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_42", label = NULL, width = "100%")
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
                             textInput("field8_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_48", label = NULL, width = "100%")
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
                             textInput("field8_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 8 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear8", "Clear Player 8 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear8confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear8cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll8", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll8confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll8cancel")
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
                             textInput("field8_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_60", label = "Game 6", width = "100%")
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
                             textInput("field8_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_66", label = NULL, width = "100%")
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
                             textInput("field8_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_72", label = NULL, width = "100%")
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
                             textInput("field8_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_78", label = NULL, width = "100%")
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
                             textInput("field8_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_84", label = NULL, width = "100%")
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
                             textInput("field8_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_90", label = NULL, width = "100%")
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
                             textInput("field8_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_96", label = NULL, width = "100%")
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
                             textInput("field8_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_102", label = NULL, width = "100%")
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
                             textInput("field8_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_108", label = NULL, width = "100%")
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
                             textInput("field8_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_114", label = NULL, width = "100%")
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
                             textInput("field8_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field8_120", label = NULL, width = "100%")
                           )
                           
                         )
                )
                
                
              )),
      tabItem(tabName = "player9", 
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
                             textInput("field9_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_6", label = NULL, width = "100%")
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
                             textInput("field9_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_12", label = NULL, width = "100%")
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
                             textInput("field9_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_18", label = NULL, width = "100%")
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
                             textInput("field9_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_24", label = NULL, width = "100%")
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
                             textInput("field9_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_30", label = NULL, width = "100%")
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
                             textInput("field9_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_36", label = NULL, width = "100%")
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
                             textInput("field9_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_42", label = NULL, width = "100%")
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
                             textInput("field9_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_48", label = NULL, width = "100%")
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
                             textInput("field9_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 9 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear9", "Clear Player 9 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear9confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear9cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll9", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll9confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll9cancel")
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
                             textInput("field9_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_60", label = "Game 6", width = "100%")
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
                             textInput("field9_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_66", label = NULL, width = "100%")
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
                             textInput("field9_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_72", label = NULL, width = "100%")
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
                             textInput("field9_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_78", label = NULL, width = "100%")
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
                             textInput("field9_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_84", label = NULL, width = "100%")
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
                             textInput("field9_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_90", label = NULL, width = "100%")
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
                             textInput("field9_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_96", label = NULL, width = "100%")
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
                             textInput("field9_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_102", label = NULL, width = "100%")
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
                             textInput("field9_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_108", label = NULL, width = "100%")
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
                             textInput("field9_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_114", label = NULL, width = "100%")
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
                             textInput("field9_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field9_120", label = NULL, width = "100%")
                           )
                           
                         )
                )
                
                
              )),
      tabItem(tabName = "player10", 
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
                             textInput("field10_1", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_2", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_3", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_4", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_5", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_6", label = NULL, width = "100%")
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
                             textInput("field10_7", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_8", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_9", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_10", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_11", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_12", label = NULL, width = "100%")
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
                             textInput("field10_13", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_14", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_15", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_16", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_17", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_18", label = NULL, width = "100%")
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
                             textInput("field10_19", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_20", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_21", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_22", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_23", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_24", label = NULL, width = "100%")
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
                             textInput("field10_25", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_26", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_27", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_28", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_29", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_30", label = NULL, width = "100%")
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
                             textInput("field10_31", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_32", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_33", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_34", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_35", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_36", label = NULL, width = "100%")
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
                             textInput("field10_37", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_38", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_39", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_40", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_41", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_42", label = NULL, width = "100%")
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
                             textInput("field10_43", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_44", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_45", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_46", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_47", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_48", label = NULL, width = "100%")
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
                             textInput("field10_49", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_50", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_51", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_52", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_53", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_54", label = NULL, width = "100%")
                           )
                           
                         ),
                         #### Player 10 Buttons ----
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clear10", "Clear Player 10 Scores", icon = icon("xmark"),
                                          style = "background:#cc6699;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear10confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clear10cancel")
                           )
                         ),
                         br(),
                         fluidRow(
                           column(
                             width = 3,
                             actionButton("clearAll10", "Clear ALL player Scores", icon = icon("xmark"),
                                          style = "background:#999966;color:white;")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll10confirm")
                           ),
                           column(
                             width = 3,
                             uiOutput("clearAll10cancel")
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
                             textInput("field10_55", label = "Game 1", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_56", label = "Game 2", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_57", label = "Game 3", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_58", label = "Game 4", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_59", label = "Game 5", width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_60", label = "Game 6", width = "100%")
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
                             textInput("field10_61", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_62", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_63", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_64", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_65", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_66", label = NULL, width = "100%")
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
                             textInput("field10_67", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_68", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_69", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_70", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_71", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_72", label = NULL, width = "100%")
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
                             textInput("field10_73", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_74", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_75", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_76", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_77", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_78", label = NULL, width = "100%")
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
                             textInput("field10_79", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_80", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_81", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_82", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_83", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_84", label = NULL, width = "100%")
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
                             textInput("field10_85", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_86", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_87", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_88", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_89", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_90", label = NULL, width = "100%")
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
                             textInput("field10_91", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_92", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_93", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_94", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_95", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_96", label = NULL, width = "100%")
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
                             textInput("field10_97", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_98", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_99", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_100", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_101", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_102", label = NULL, width = "100%")
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
                             textInput("field10_103", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_104", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_105", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_106", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_107", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_108", label = NULL, width = "100%")
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
                             textInput("field10_109", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_110", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_111", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_112", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_113", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_114", label = NULL, width = "100%")
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
                             textInput("field10_115", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_116", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_117", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_118", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_119", label = NULL, width = "100%")
                           ),
                           column(
                             width = 1,
                             textInput("field10_120", label = NULL, width = "100%")
                           )
                           
                         )
                )
                
                
              ))
    ))
  
)

server = function(input, output, session){
  
  change_window_title(session, title = "YuHtzee")
  
  output$separator <- renderText({
    paste("-----------------------------------------------------------------------------")
  })
  
  output$yuhtzee = renderText({
    paste0("YuHtzee - Yahtzee Score keeper app")
  })
  
  #### Player 1 buttons server -----
  
  observeEvent(input$clear1,{
    output$clear1confirm = renderUI({
      actionButton("clear1confirmButton", "Confirm Clear Player 1", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear1cancel = renderUI({
      actionButton("clear1cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear1confirmButton")
    show(id = "clear1cancelButton")
  })
  
  observeEvent(input$clear1cancelButton,{
    
    hide(id = "clear1confirmButton")
    hide(id = "clear1cancelButton")
    
  })
  
  
  observeEvent(input$clear1confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","1","_",j),
                      value = "")
    }
    hide(id = "clear1confirmButton")
    hide(id = "clear1cancelButton")
    
  })
  
  #### Player 2 buttons server -----
  
  observeEvent(input$clear2,{
    output$clear2confirm = renderUI({
      actionButton("clear2confirmButton", "Confirm Clear Player 2", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear2cancel = renderUI({
      actionButton("clear2cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear2confirmButton")
    show(id = "clear2cancelButton")
  })
  
  observeEvent(input$clear2cancelButton,{
    
    hide(id = "clear2confirmButton")
    hide(id = "clear2cancelButton")
    
  })
  
  
  observeEvent(input$clear2confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","2","_",j),
                      value = "")
    }
    hide(id = "clear2confirmButton")
    hide(id = "clear2cancelButton")
    
  })
  
  #### Player 3 buttons server -----
  
  observeEvent(input$clear3,{
    output$clear3confirm = renderUI({
      actionButton("clear3confirmButton", "Confirm Clear Player 3", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear3cancel = renderUI({
      actionButton("clear3cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear3confirmButton")
    show(id = "clear3cancelButton")
  })
  
  observeEvent(input$clear3cancelButton,{
    
    hide(id = "clear3confirmButton")
    hide(id = "clear3cancelButton")
    
  })
  
  
  observeEvent(input$clear3confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","3","_",j),
                      value = "")
    }
    hide(id = "clear3confirmButton")
    hide(id = "clear3cancelButton")
    
  })
  
  #### Player 4 buttons server -----
  
  observeEvent(input$clear4,{
    output$clear4confirm = renderUI({
      actionButton("clear4confirmButton", "Confirm Clear Player 4", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear4cancel = renderUI({
      actionButton("clear4cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear4confirmButton")
    show(id = "clear4cancelButton")
  })
  
  observeEvent(input$clear4cancelButton,{
    
    hide(id = "clear4confirmButton")
    hide(id = "clear4cancelButton")
    
  })
  
  
  observeEvent(input$clear4confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","4","_",j),
                      value = "")
    }
    hide(id = "clear4confirmButton")
    hide(id = "clear4cancelButton")
    
  })
  
  #### Player 5 buttons server -----
  
  observeEvent(input$clear5,{
    output$clear5confirm = renderUI({
      actionButton("clear5confirmButton", "Confirm Clear Player 5", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear5cancel = renderUI({
      actionButton("clear5cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear5confirmButton")
    show(id = "clear5cancelButton")
  })
  
  observeEvent(input$clear5cancelButton,{
    
    hide(id = "clear5confirmButton")
    hide(id = "clear5cancelButton")
    
  })
  
  
  observeEvent(input$clear5confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","5","_",j),
                      value = "")
    }
    hide(id = "clear5confirmButton")
    hide(id = "clear5cancelButton")
    
  })
  
  #### Player 6 buttons server -----
  
  observeEvent(input$clear6,{
    output$clear6confirm = renderUI({
      actionButton("clear6confirmButton", "Confirm Clear Player 6", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear6cancel = renderUI({
      actionButton("clear6cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear6confirmButton")
    show(id = "clear6cancelButton")
  })
  
  observeEvent(input$clear6cancelButton,{
    
    hide(id = "clear6confirmButton")
    hide(id = "clear6cancelButton")
    
  })
  
  
  observeEvent(input$clear6confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","6","_",j),
                      value = "")
    }
    hide(id = "clear6confirmButton")
    hide(id = "clear6cancelButton")
    
  })
  
  #### Player 7 buttons server -----
  
  observeEvent(input$clear7,{
    output$clear7confirm = renderUI({
      actionButton("clear7confirmButton", "Confirm Clear Player 7", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear7cancel = renderUI({
      actionButton("clear7cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear7confirmButton")
    show(id = "clear7cancelButton")
  })
  
  observeEvent(input$clear7cancelButton,{
    
    hide(id = "clear7confirmButton")
    hide(id = "clear7cancelButton")
    
  })
  
  
  observeEvent(input$clear7confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","7","_",j),
                      value = "")
    }
    
    hide(id = "clear7confirmButton")
    hide(id = "clear7cancelButton")
    
  })
  
  #### Player 8 buttons server -----
  
  observeEvent(input$clear8,{
    output$clear8confirm = renderUI({
      actionButton("clear8confirmButton", "Confirm Clear Player 8", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear8cancel = renderUI({
      actionButton("clear8cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear8confirmButton")
    show(id = "clear8cancelButton")
  })
  
  observeEvent(input$clear8cancelButton,{
    
    hide(id = "clear8confirmButton")
    hide(id = "clear8cancelButton")
    
  })
  
  
  observeEvent(input$clear8confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","8","_",j),
                      value = "")
    }
    hide(id = "clear8confirmButton")
    hide(id = "clear8cancelButton")
    
  })
  
  #### Player 9 buttons server -----
  
  observeEvent(input$clear9,{
    output$clear9confirm = renderUI({
      actionButton("clear9confirmButton", "Confirm Clear Player 9", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear9cancel = renderUI({
      actionButton("clear9cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear9confirmButton")
    show(id = "clear9cancelButton")
  })
  
  observeEvent(input$clear9cancelButton,{
    
    hide(id = "clear9confirmButton")
    hide(id = "clear9cancelButton")
    
  })
  
  
  observeEvent(input$clear9confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","9","_",j),
                      value = "")
    }
    hide(id = "clear9confirmButton")
    hide(id = "clear9cancelButton")
  })
  
  #### Player 10 buttons server -----
  
  observeEvent(input$clear10,{
    output$clear10confirm = renderUI({
      actionButton("clear10confirmButton", "Confirm Clear Player 10", icon = icon("trash-can"),
                   style = "background:red;color:white;")
    })
    
    output$clear10cancel = renderUI({
      actionButton("clear10cancelButton", "Cancel Clear", icon = icon("ban"),
                   style = "background:#ffa64d;color:white;")
    })
    
    show(id = "clear10confirmButton")
    show(id = "clear10cancelButton")
  })
  
  observeEvent(input$clear10cancelButton,{
    
    hide(id = "clear10confirmButton")
    hide(id = "clear10cancelButton")
    
  })
  
  
  observeEvent(input$clear10confirmButton,{
    
    for (j in 1:120){
      updateTextInput(inputId = paste0("field","10","_",j),
                      value = "")
    }
    hide(id = "clear10confirmButton")
    hide(id = "clear10cancelButton")
    
  })
  
  
  #### Player ALL1 buttons server -----
  
  observeEvent(input$clearAll1,{
    output$clearAll1confirm = renderUI({
      actionButton("clearAll1confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll1cancel = renderUI({
      actionButton("clearAll1cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll1confirmButton")
    show(id = "clearAll1cancelButton")
  })
  
  observeEvent(input$clearAll1cancelButton,{
    
    hide(id = "clearAll1confirmButton")
    hide(id = "clearAll1cancelButton")
    
  })
  
  observeEvent(input$clearAll1confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll1confirmButton")
    hide(id = "clearAll1cancelButton")
  })
  
  #### Player ALL2 buttons server -----
  
  observeEvent(input$clearAll2,{
    output$clearAll2confirm = renderUI({
      actionButton("clearAll2confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll2cancel = renderUI({
      actionButton("clearAll2cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll2confirmButton")
    show(id = "clearAll2cancelButton")
  })
  
  observeEvent(input$clearAll2cancelButton,{
    
    hide(id = "clearAll2confirmButton")
    hide(id = "clearAll2cancelButton")
    
  })
  
  observeEvent(input$clearAll2confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll2confirmButton")
    hide(id = "clearAll2cancelButton")
  })
  
  #### Player ALL3 buttons server -----
  
  observeEvent(input$clearAll3,{
    output$clearAll3confirm = renderUI({
      actionButton("clearAll3confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll3cancel = renderUI({
      actionButton("clearAll3cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll3confirmButton")
    show(id = "clearAll3cancelButton")
  })
  
  observeEvent(input$clearAll3cancelButton,{
    
    hide(id = "clearAll3confirmButton")
    hide(id = "clearAll3cancelButton")
    
  })
  
  observeEvent(input$clearAll3confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll3confirmButton")
    hide(id = "clearAll3cancelButton")
  })
  
  #### Player ALL4 buttons server -----
  
  observeEvent(input$clearAll4,{
    output$clearAll4confirm = renderUI({
      actionButton("clearAll4confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll4cancel = renderUI({
      actionButton("clearAll4cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll4confirmButton")
    show(id = "clearAll4cancelButton")
  })
  
  observeEvent(input$clearAll4cancelButton,{
    
    hide(id = "clearAll4confirmButton")
    hide(id = "clearAll4cancelButton")
    
  })
  
  observeEvent(input$clearAll4confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll4confirmButton")
    hide(id = "clearAll4cancelButton")
  })
  
  #### Player ALL5 buttons server -----
  
  observeEvent(input$clearAll5,{
    output$clearAll5confirm = renderUI({
      actionButton("clearAll5confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll5cancel = renderUI({
      actionButton("clearAll5cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll5confirmButton")
    show(id = "clearAll5cancelButton")
  })
  
  observeEvent(input$clearAll5cancelButton,{
    
    hide(id = "clearAll5confirmButton")
    hide(id = "clearAll5cancelButton")
    
  })
  
  observeEvent(input$clearAll5confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll5confirmButton")
    hide(id = "clearAll5cancelButton")
  })
  
  #### Player ALL6 buttons server -----
  
  observeEvent(input$clearAll6,{
    output$clearAll6confirm = renderUI({
      actionButton("clearAll6confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll6cancel = renderUI({
      actionButton("clearAll6cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll6confirmButton")
    show(id = "clearAll6cancelButton")
  })
  
  observeEvent(input$clearAll6cancelButton,{
    
    hide(id = "clearAll6confirmButton")
    hide(id = "clearAll6cancelButton")
    
  })
  
  observeEvent(input$clearAll6confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll6confirmButton")
    hide(id = "clearAll6cancelButton")
  })
  
  #### Player ALL7 buttons server -----
  
  observeEvent(input$clearAll7,{
    output$clearAll7confirm = renderUI({
      actionButton("clearAll7confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll7cancel = renderUI({
      actionButton("clearAll7cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll7confirmButton")
    show(id = "clearAll7cancelButton")
  })
  
  observeEvent(input$clearAll7cancelButton,{
    
    hide(id = "clearAll7confirmButton")
    hide(id = "clearAll7cancelButton")
    
  })
  
  observeEvent(input$clearAll7confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll7confirmButton")
    hide(id = "clearAll7cancelButton")
  })
  
  #### Player ALL8 buttons server -----
  
  observeEvent(input$clearAll8,{
    output$clearAll8confirm = renderUI({
      actionButton("clearAll8confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll8cancel = renderUI({
      actionButton("clearAll8cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll8confirmButton")
    show(id = "clearAll8cancelButton")
  })
  
  observeEvent(input$clearAll8cancelButton,{
    
    hide(id = "clearAll8confirmButton")
    hide(id = "clearAll8cancelButton")
    
  })
  
  observeEvent(input$clearAll8confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll8confirmButton")
    hide(id = "clearAll8cancelButton")
  })
  
  #### Player ALL9 buttons server -----
  
  observeEvent(input$clearAll9,{
    output$clearAll9confirm = renderUI({
      actionButton("clearAll9confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll9cancel = renderUI({
      actionButton("clearAll9cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll9confirmButton")
    show(id = "clearAll9cancelButton")
  })
  
  observeEvent(input$clearAll9cancelButton,{
    
    hide(id = "clearAll9confirmButton")
    hide(id = "clearAll9cancelButton")
    
  })
  
  observeEvent(input$clearAll9confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll9confirmButton")
    hide(id = "clearAll9cancelButton")
  })
  
  #### Player ALL10 buttons server -----
  
  observeEvent(input$clearAll10,{
    output$clearAll10confirm = renderUI({
      actionButton("clearAll10confirmButton", "Confirm Clear ALL Players", icon = icon("trash-can"),
                   style = "background:black;color:white;")
    })
    
    output$clearAll10cancel = renderUI({
      actionButton("clearAll10cancelButton", "Cancel Clear ALL", icon = icon("ban"),
                   style = "background:#666699;color:white;")
    })
    
    show(id = "clearAll10confirmButton")
    show(id = "clearAll10cancelButton")
  })
  
  observeEvent(input$clearAll10cancelButton,{
    
    hide(id = "clearAll10confirmButton")
    hide(id = "clearAll10cancelButton")
    
  })
  
  observeEvent(input$clearAll10confirmButton,{
    for (i in 1:10){
      for (j in 1:120){
        updateTextInput(inputId = paste0("field",i,"_",j),
                        value = "")
      }
    }
    hide(id = "clearAll10confirmButton")
    hide(id = "clearAll10cancelButton")
  })
  
  
  #### End ----
  setupStorage(
    appId = "YuHtzee",
    inputs = TRUE
  )
}

shinyApp(ui, server)
