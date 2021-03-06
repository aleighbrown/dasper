% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/junction_filter.R
\name{junction_filter}
\alias{junction_filter}
\title{Filter junctions by count, width, annotation or region}
\usage{
junction_filter(
  junctions,
  count_thresh = c(raw = 5),
  n_samp = c(raw = 1),
  width_range = NULL,
  types = NULL,
  regions = NULL
)
}
\arguments{
\item{junctions}{junction data as a
\link[SummarizedExperiment:RangedSummarizedExperiment-class]{RangedSummarizedExperiment-class}
object.}

\item{count_thresh}{named vector with names matching the names of the
\link[SummarizedExperiment:SummarizedExperiment-class]{assays} in \code{junctions}. Values
denote the number of counts below which a junction will be filtered out.}

\item{n_samp}{named vector with names matching the names of the
\link[SummarizedExperiment:SummarizedExperiment-class]{assays} in \code{junctions}. Values
denotes number of samples that have to express the junction above the
\code{count_thresh} in order for that junction to not be filtered.}

\item{width_range}{numeric vector of length 2. The first element denoting the
lower limit of junction width and the second the upper limit. Junctions
with widths outside this range will be filtered out.}

\item{types}{any junctions matching these types, derived form
\link{junction_annot} will be filtered out.}

\item{regions}{any junctions overlapping this set of regions (in a
\link[GenomicRanges:GRanges-class]{GRanges-class} format) will be filtered out.}
}
\value{
\link[SummarizedExperiment:RangedSummarizedExperiment-class]{RangedSummarizedExperiment-class}
containing filtered set of junctions.
}
\description{
\code{junction_filter} filters out "noisy" junctions based on counts, the
width of junctions, annotation category of the junction returned from
\link{junction_annot} and whether the junction overlaps with a set of
(blacklist) regions.
}
\examples{

junctions_filtered <- junction_filter(junctions_example)
junctions_filtered
}
\seealso{
ENCODE blacklist regions recommended to  be included as
\code{regions} can be downloaded from
\url{https://github.com/Boyle-Lab/Blacklist/blob/master/lists/hg38-blacklist.v2.bed.gz}.
Further information can be found via the publication
\url{https://www.nature.com/articles/s41598-019-45839-z}.

Junction processing functions
\code{\link{junction_annot}()},
\code{\link{junction_load}()},
\code{\link{junction_norm}()},
\code{\link{junction_process}()},
\code{\link{junction_score}()}
}
\concept{junction}
