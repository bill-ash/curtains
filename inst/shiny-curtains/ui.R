#UI
fluidPage(

  fluidRow(
    column(4,
           h3("Open it.. just a bit...."),
           actionButton('open_curtains', 'Open'),
           offset = 1
    ),
    column(4,
           h3("Time for bed!"),
           actionButton('close_curtains', 'Close')
    )
  )

)
