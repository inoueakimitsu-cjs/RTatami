% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/launch_tatami.R
\name{launch_tatami}
\alias{launch_tatami}
\alias{launch_tatami.default}
\title{Launch the 'Tatatmi' app}
\usage{
launch_tatami(initial, ..., rstudio = getOption("rtatami.rstudio"))

\method{launch_tatami}{default}(initial, ...,
  rstudio = getOption(("rtatami.rstudio")))
}
\arguments{
\item{initial}{initial value for square measure in metric.}

\item{...}{settings for shiny::runApp.}

\item{rstudio}{set TRUE if RStudio viwer is used. the default setting is FALSE.}
}
\description{
Launch the 'Tatami' app in the default web browser.
'RStudio' users also have the option of
launching the app in the pop-up Viewer.
}
