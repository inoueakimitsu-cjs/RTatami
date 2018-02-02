library(shiny)

#' Launch the 'Tatatmi' app
#'
#' Launch the 'Tatami' app in the default web browser.
#' 'RStudio' users also have the option of
#' launching the app in the pop-up Viewer.
#'
#' @param initial initial value for square measure in metric.
#' @param ... settings for shiny::runApp.
#' @param rstudio set TRUE if RStudio viwer is used. the default setting is FALSE.
#' @export
launch_tatami <- function(initial, ...,
                          rstudio = getOption("rtatami.rstudio")) {
  UseMethod("launch_tatami")
}

#' @rdname launch_tatami
#' @export
launch_tatami.default <- function(
  initial,
  ...,
  rstudio = getOption(("rtatami.rstudio"))
                                  ) {
  message("\nLaunching Tatami interface... ",
          "this may take some time.")
  invisible(launch(initial, rstudio, ...))
}

# Internal launch function
launch <- function(initial, rstudio = FALSE, ...) {
  launch.browser <- if (!rstudio) TRUE else getOption("shiny.launch.browser", interactive())

  shiny::runApp(system.file("RTatami", package = "RTatami"),
                launch.browser = launch.browser, ...)
}
