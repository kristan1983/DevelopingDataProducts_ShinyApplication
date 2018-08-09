

MusicPred <- function(mood){
        if (mood=="danceable") "Uptown Funk! by Bruno Mars"
        else if (mood=="happy") "Happy by Pharrell Williams"
        else if (mood=="energetic") "I Gotta Feeling by The Black Eyed Peas"
        else if (mood=="in love") "Just The Way You Are by Bruno Mars"
        else if (mood=="sad") "No Tears Left to Cry by Ariana Grande"
}

MoviePred <- function(movie){
        if (movie=="action") "Avengers: Infinity War (2018)"
        else if (movie=="animation") "Incredibles 2 (2018)"
        else if (movie=="comedy") "Like Father (2018)"
        else if (movie=="horror") "A Quiet Place (2018)"
        else if (movie=="musicals") "Mamma Mia! Here We Go Again (2018)"
        else if (movie=="sci-fi") "Jurassic World: Fallen Kingdom (2018)"
        else if (movie=="thriller") "Skyscraper (2018)"
        else if (movie=="romance") "A Star is Born (2018)"
}
        

shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint({input$mood})
                output$prediction <- renderPrint({MusicPred(input$mood)})
                
                output$inputValue2 <- renderPrint({input$movie})
                output$prediction2 <- renderPrint({MoviePred(input$movie)})
        }
)