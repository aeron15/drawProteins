% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geoms.R
\name{draw_domains}
\alias{draw_domains}
\title{Add protein domains to ggplot object.}
\usage{
draw_domains(p, data = data, label_domains = TRUE, label_size = 4,
    show.legend = TRUE)
}
\arguments{
\item{p}{ggplot object ideally created with \code{\link{draw_canvas}}.}

\item{data}{Dataframe of one or more rows with the following column
names: 'type', 'description', 'begin', 'end', 'length', 'accession',
'entryName', 'taxid', 'order'. Must contain a minimum of one "CHAIN" as
data$type.}

\item{label_domains}{Option to label domains or not.}

\item{label_size}{Size of the text used for labels.}

\item{show.legend}{Option to include legend in this layer}
}
\value{
A ggplot object either in the plot window or as an object with an
additional geom_rect layer.
}
\description{
\code{draw_domains} adds domains to the ggplot object created by
\code{\link{draw_chains}}.
It uses the data object.
The ggplot function
\code{\link[ggplot2]{geom_rect}} is used to draw each of the domain
chains proportional to their number of amino acids (length).
}
\examples{
# combines with draw_chains to plot chains and domains.
data("five_rel_data")
p <- draw_canvas(five_rel_data)
p <- draw_chains(p, five_rel_data, label_size = 1.25)
p <- draw_domains(p, five_rel_data)
p

}
