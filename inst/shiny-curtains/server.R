#Server
function(input, output, session) {

  fortunes::fortune()

  # POST TO PI WHEN BUTTONS ARE ENGAGED
  observeEvent(input$open_curtains, {

    showModal(
      modalDialog('You opened the curtains!', footer = NULL,
                  easyClose = TRUE)
    )
    # Some stuff
  })

  observeEvent(input$close_curtains, {
    # Go write a function
    showModal(
      modalDialog('You closed the curtains!', footer = NULL,
                  easyClose = TRUE)
    )

  })

}
