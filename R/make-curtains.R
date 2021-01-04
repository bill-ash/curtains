#' Make shiny app 
#'
#' Open sesame!
#'
#' @param port Integer port number
#'
#' @return Shiny application
#' @export
#'
#' @examples \dontrun{
#' makeCurtains()
#' }
makeCurtains <- function(port = 4455L) {

  shiny_path <- system.file('shiny-curtains', package = 'curtains')

  shiny::runApp(shiny_path, host = '0.0.0.0', port = port)

}
