% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{filter_regions}
\alias{filter_regions}
\alias{filter_cpgs,}
\alias{melissa_filter}
\alias{filter_by_cpg_coverage}
\alias{filter_by_coverage_across_cells}
\alias{filter_by_variability}
\title{Filtering process prior to running Melissa}
\usage{
filter_by_cpg_coverage(obj, min_cpgcov = 10)

filter_by_coverage_across_cells(obj, min_cell_cov_prcg = 0.5)

filter_by_variability(obj, min_var = 0.1)
}
\arguments{
\item{obj}{Melissa data object.}

\item{min_cpgcov}{Minimum CpG coverage for each genomic region.}

\item{min_cell_cov_prcg}{Threshold on the proportion of cells that have
coverage for each region.}

\item{min_var}{Minimum variability of mean methylation across cells, measured
in terms of standard deviation.}
}
\value{
The filtered Melissa data object
}
\description{
Fuctions for filter genomic regions due to (1) low CpG coverage,
  (2) low coverage across cells, or (3) low mean methylation variability.
}
\details{
The (1) `filter_by_cpg_coverage` function does not actually remove
  the region, it only sets NA to those regions. The (2)
  `filter_by_coverage_across_cells` function keeps regions from which we can
  share information across cells. The (3) `filter_by_variability` function
  keeps variable regions which are informative for cell subtype
  identification.
}
\examples{
# Run on synthetic data from Melissa package
filt_obj <- filter_by_cpg_coverage(melissa_encode_dt, min_cpgcov = 20)

# Run on synthetic data from Melissa package
filt_obj <- filter_by_coverage_across_cells(melissa_encode_dt,
                                            min_cell_cov_prcg = 0.7)

# Run on synthetic data from Melissa package
filt_obj <- filter_by_variability(melissa_encode_dt, min_var = 0.1)

}
\seealso{
\code{\link{melissa}}, \code{\link{create_melissa_data_obj}}
}
\author{
C.A.Kapourani \email{C.A.Kapourani@ed.ac.uk}
}
