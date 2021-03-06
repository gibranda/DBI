% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DBResult.R
\name{dbClearResult}
\alias{dbClearResult}
\title{Clear a result set.}
\usage{
dbClearResult(res, ...)
}
\arguments{
\item{res}{An object inheriting from \code{\linkS4class{DBIResult}}.}

\item{...}{Other arguments passed on to methods.}
}
\value{
a logical indicating whether clearing the
  result set was successful or not.
}
\description{
Frees all resources (local and remote) associated with a result set.  It some
cases (e.g., very large result sets) this can be a critical step to avoid
exhausting resources (memory, file descriptors, etc.)
}
\seealso{
Other DBIResult generics: \code{\link{dbColumnInfo}},
  \code{\link{dbFetch}}, \code{\link{dbGetRowCount}},
  \code{\link{dbGetRowsAffected}},
  \code{\link{dbGetStatement}},
  \code{\link{dbHasCompleted}}
}

