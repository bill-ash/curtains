#Server
function(input, output, session) {

  observeEvent(input$open_curtains, {
    httr::GET('http://192.168.4.98:5000/open')
    showModal(
      modalDialog('You opened the curtains!', footer = NULL,
                  easyClose = TRUE)
    )
  })

  observeEvent(input$close_curtains, {
    httr::GET('http://192.168.4.98:5000/close')
    showModal(
      modalDialog('You closed the curtains!', footer = NULL,
                  easyClose = TRUE)
    )
  })

}
