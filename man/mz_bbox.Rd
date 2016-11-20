% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mz-accessors.R
\name{mz_bbox}
\alias{mz_bbox}
\title{Get the bounding box for a \code{mapzen_geo_list}}
\usage{
mz_bbox(geo)
}
\arguments{
\item{geo}{A mapzen geo list}
}
\value{
A tibble
}
\description{
The returned value can be used directly as the \code{boundary.rect}
parameter for \link{search} functions
}
