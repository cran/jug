% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jug.R
\name{jug}
\alias{jug}
\title{New jug instance}
\usage{
jug()
}
\description{
Creates a new jug instance which can be build upon with other functions (middlewares).
}
\examples{
\donttest{
# This Hello World example will serve a jug instance on the default port.
# The jug instance will return "Hello World!" if a GET request is send to it.
jug() \%>\%
 get("/", function(req, res, err) "Hello World!" ) \%>\%
 simple_error_handler_json() \%>\%
 serve_it(verbose=TRUE)
}

\donttest{
# Introduction to jug
vignette("jug", package="jug")
}

}
