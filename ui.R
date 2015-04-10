#load libraries
library(shiny)
library(stats)

shinyUI(
    pageWithSidebar(
        # Application title
        headerPanel("Sample Size Calculation for Two-Sample t-Test"),
        
        # User input
        sidebarPanel(
            numericInput('pow.perc', 'Power (%)', 80, min = 1, max = 100, step = 1),
            numericInput('group.diff', 'Difference between the groups', 100, min = 1, max = 1000, step = 1),
            numericInput('std.dev', 'Standard deviation', 100, min = 1, max = 1000, step = 1),
            numericInput('alpha.level', 'Significance level (probability, two-sided)', 0.05, min = 0, max = 1, step = 0.01),
            submitButton('Submit')
        ),
        mainPanel(
            h3('Required sample size in each group'),            
            verbatimTextOutput("sample.size")
        )
    )
)