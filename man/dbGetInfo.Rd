% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DBObject.R, R/DBResult.R
\docType{methods}
\name{dbGetInfo}
\alias{dbGetInfo}
\alias{dbGetInfo,DBIResult-method}
\title{Get DBMS metadata.}
\usage{
dbGetInfo(dbObj, ...)

\S4method{dbGetInfo}{DBIResult}(dbObj, ...)
}
\arguments{
\item{dbObj}{An object inheriting from \code{\linkS4class{DBIObject}},
i.e. \code{\linkS4class{DBIDriver}}, \code{\linkS4class{DBIConnection}},
or a \code{\linkS4class{DBIResult}}}

\item{...}{Other arguments to methods.}
}
\value{
a named list
}
\description{
Get DBMS metadata.
}
\section{Implementation notes}{

For \code{DBIDriver} subclasses, this should include the version of the
package (\code{driver.version}), the version of the underlying client
library (\code{client.version}), and the maximum number of connections
(\code{max.connections}).

For \code{DBIConnection} objects this should report the version of
the DBMS engine (\code{db.version}), database name (\code{dbname}),
username, (\code{username}), host (\code{host}), port (\code{port}), etc.
It MAY also include any other arguments related to the connection
(e.g., thread id, socket or TCP connection type). It MUST NOT include the
password.

For \code{DBIResult} objects, this should include the statement
being executed (\code{statement}), how many rows have been fetched so far
(in the case of queries, \code{row.count}), how many rows were affected
(deleted, inserted, changed,
(\code{rows.affected}), and if the query is complete (\code{has.completed}).


The default implementation for \code{DBIResult objects}
constructs such a list from the return values of the corresponding methods,
\code{\link{dbGetStatement}}, \code{\link{dbGetRowCount}},
\code{\link{dbGetRowsAffected}}, and \code{\link{dbHasCompleted}}.
}
\seealso{
Other DBObject methods: \code{\link{dbIsValid}}
}

