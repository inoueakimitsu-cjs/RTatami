library(shiny)

#' Launch the 'Tatatmi' app
#'
#' Launch the 'Tatami' app in the default web browser.
#' 'RStudio' users also have the option of
#' launching the app in the pop-up Viewer.
#'
#' @export
launch_tatami <- function(first, ...,
                          rstudio = getOption("rtatami.rstudio")) {
  UseMethod("launch_tatami")
}

#' @rdname launch_tatami
#' @export
launch_tatami.default <- function(
  first,
  ...,
  rstudio = getOption(("rtatami.rstudio"))
                                  ) {
  message("\nLaunching Tatami interface... ",
          "this may take some time.")
  invisible(launch(first, rstudio, ...))
}

# Internal launch function
launch <- function(first, rstudio = FALSE, ...) {
  launch.browser <- if (!rstudio) TRUE else getOption("shiny.launch.browser", interactive())

  shiny::runApp(system.file("RTatami", package = "RTatami"),
                launch.browser = launch.browser, ...)
}
