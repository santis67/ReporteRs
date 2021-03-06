% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/addTOC.bsdoc.R
\name{addTOC.bsdoc}
\alias{addTOC.bsdoc}
\title{Insert a table of contents into a bsdoc object}
\usage{
\method{addTOC}{bsdoc}(doc, ...)
}
\arguments{
\item{doc}{Object of class \code{\link{bsdoc}} where table of content has to be added}

\item{...}{further arguments, not used.}
}
\value{
an object of class \code{\link{bsdoc}}.
}
\description{
Insert a table of contents into a \code{\link{bsdoc}} object.
}
\details{
The function do specify to add a table of contents on the right side
of the content.
}
\examples{
#START_TAG_TEST
doc = bsdoc( )

doc = addTitle( doc, 'Title 1', level = 1 )

doc = addTitle( doc, 'Title 2', level = 1 )

doc = addTitle( doc, 'Title 3', level = 1 )

doc = addTitle( doc, 'Title A', level = 2 )

doc = addTitle( doc, 'Title B', level = 2 )

doc = addTOC( doc )

writeDoc( doc, file = 'addTOC_example/example.html')
#STOP_TAG_TEST
}
\seealso{
\code{\link{bsdoc}}, \code{\link{addTOC.bsdoc}}
, \code{\link{docx}}, \code{\link{addTOC.docx}}
}

