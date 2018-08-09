

shinyUI(
        pageWithSidebar(
                
                headerPanel("Music and Movie Suggestion"),
                sidebarPanel(
                        textInput('mood', label="How Do You Feel? (caps off)"),
                        h6('Selection: danceable, happy, energetic, in love, sad'),
                        textInput('movie', label="Movie Genre (caps off)"),
                        h6('Selection: action, animation, comedy, horror, musicals, sci-fi, thriller, romance'),
                        submitButton('Submit')
                ),
                mainPanel(
                        h3(''),
                        h4('You are feeling'),
                        verbatimTextOutput("inputValue"),
                        h4('You entered this genre'),
                        verbatimTextOutput("inputValue2"),
                        h4('We recommend this song '),
                        verbatimTextOutput("prediction"),
                        h4('We recommend this movie '),
                        verbatimTextOutput("prediction2")
                )
        )
)