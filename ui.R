shinyUI(fluidPage(
  titlePanel("Child Height Predictor"),
  sidebarLayout(
  sidebarPanel(
  numericInput(inputId="mHeight", label = "Enter Mother's Height in cm:",150,min=135, max=198),
  numericInput(inputId="fHeight", label = "Enter Father's Height in cm:",167,min=135, max=213),
  radioButtons("sex", label="Choose Child's Sex:",
        choices = list("Female" = 1, "Male" = 2),selected = 1)
  ),
  mainPanel (
  h4("Child's predicted height in cm:"),
  fluidRow(column(4, verbatimTextOutput("value")))
  )
  ),
  h6(em("Notes:")),
  h6("This height prediction is based on the sex adjusted midparental height and the methods below."),
  h6("For girls: subtract 13 cm from the father's height and average with the mother's height."),
  h6("For boys: add 13 cm to the mother's height and average with the father's height."),
  h6("13 cm is the average difference in height of women and men."),
  h6("For both girls and boys, 8.5 cm on either side of this calculated value represents the 3rd to 97th percentiles for anticipated adult height."),
  tags$a(href="http://medcalc3000.com/HeightPotential.htm", "Reference", target="_blank")
  
))