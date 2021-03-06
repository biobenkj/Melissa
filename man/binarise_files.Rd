% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/process_data.R
\name{binarise_files}
\alias{binarise_files}
\title{Binarise CpG sites}
\usage{
binarise_files(indir, outdir = NULL, no_cores = NULL)
}
\arguments{
\item{indir}{Directory containing the coverage files, output from Bismark.}

\item{outdir}{Directory to store the output files for each cell with exactly
the same name. If NULL, then a directory called `binarised` inside `indir`
will be create by default.}

\item{no_cores}{Number of cores to use for parallel processing. If NULL, no
parallel processing is used.}
}
\value{
No value is returned, the binarised data are stored in the outdir.
}
\description{
Script for binarising CpG sites and formatting the coverage file
  so it can be directly used from the BPRMeth package. The format of each
  file is the following: <chr> <start> <met_level>, where met_level can be
  either 0 or 1.
}
\examples{
\dontrun{
# Met directory
met_dir <- "name_of_met_dir"

binarise_files(met_dir)
}

}
\seealso{
\code{\link{create_melissa_data_obj}}, \code{\link{melissa}},
  \code{\link{filter_regions}}
}
\author{
C.A.Kapourani \email{C.A.Kapourani@ed.ac.uk}
}
