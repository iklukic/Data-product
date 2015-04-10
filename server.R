
shinyServer(
    function(input, output) {
        
        output$sample.size <- renderPrint({round((power.t.test(delta = input$group.diff, sd = input$std.dev, sig.level = input$alpha.level, power = (input$pow.perc / 100), type = c("two.sample"), alternative = c("two.sided"))$n), digits=0)})
    }
)