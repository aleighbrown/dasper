#' Set of example junctions
#'
#' A dataset containing the example junction data for 2 case and 3 control
#' samples outputted from \code{\link{junction_load}}.	The junctions have been
#' filtered for only those lying on chromosome 21 or 22.
#'
#' @format
#'   [RangedSummarizedExperiment-class][SummarizedExperiment::RangedSummarizedExperiment-class]
#'   object from \code{\link{SummarizedExperiment}} detailing the counts,
#'   co-ordinates of junctions lying on chromosome 21/22 for 2 example samples
#'   and 3 controls: \describe{ \item{assays}{matrix with counts for junctions
#'   (rows) and 5 samples (cols)} \item{colData}{example sample metadata}
#'   \item{rowRanges}{\code{\link[GenomicRanges]{GRanges}} object describing the
#'   co-ordinates and strand of each junction} }
#'
#' @source generated using data-raw/junctions_example.R
"junctions_example"
