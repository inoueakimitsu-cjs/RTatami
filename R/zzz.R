.onLoad <- function(libname, pkgname) {
  op <- options()
  op.rtatami <- list(
    rtatami.rstudio = FALSE
  )
  set_ops <- !(names(op.rtatami) %in% names(op))
  if (any(set_ops)) options(op.rtatami[set_ops])
  invisible()
}
