library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(shinytitle)


shinyUI(dashboardPage(
  skin = "purple",
  title = shinytitle::use_shiny_title(),
  header = dashboardHeader(
    ###### Logo -------
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
        text = "Player 1 - Horse",
        tabName = "player1",
        icon = icon("horse")
      ),
      menuItem(
        text = "Player 2 - Dog",
        tabName = "player2",
        icon = icon("dog")
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
        text = "Player 5 - Cat",
        tabName = "player5",
        icon = icon("cat")
      ),
      menuItem(
        text = "Player 6 - Dove",
        tabName = "player6",
        icon = icon("dove")
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
    tabItems(
      tabItem(tabName = "player1", uiOutput("player1page")),
      tabItem(tabName = "player2", uiOutput("player2page")),
      tabItem(tabName = "player3", uiOutput("player3page")),
      tabItem(tabName = "player4", uiOutput("player4page")),
      tabItem(tabName = "player5", uiOutput("player5page")),
      tabItem(tabName = "player6", uiOutput("player6page")),
      tabItem(tabName = "player7", uiOutput("player7page")),
      tabItem(tabName = "player8", uiOutput("player8page")),
      tabItem(tabName = "player9", uiOutput("player9page")),
      tabItem(tabName = "player10", uiOutput("player10page"))
    ))
  
))
