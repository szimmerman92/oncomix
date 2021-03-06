% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oncoMix_two_component_mixture_models.R
\name{scatterMixPlot}
\alias{scatterMixPlot}
\title{Generate a scatter plot with the output from mixModelParams}
\usage{
scatterMixPlot(mmParams, selIndThresh = 1, gene_labels = NULL)
}
\arguments{
\item{mmParams}{The output from the mixModelParams function. Will utilize the deltaMu2
and deltaMu1 rows}
}
\value{
Returns a ggplot object that you can plot
}
\description{
This function allows you to generate the parameters for two 2-component mixture models
with equal variances
}
\examples{
scatterMixPlot(mmParams)
}
\seealso{
\code{\link{mixModelParams}}
}
\keyword{oncoMix,}
\keyword{two-component}
\keyword{visualization,}
