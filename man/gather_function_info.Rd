% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gather_function_info.R
\name{gather_function_info}
\alias{gather_function_info}
\title{collect the \dots and apply them appropriately to gsplot}
\usage{
gather_function_info(object, fun.name, ..., legend.name, side, where)
}
\arguments{
\item{object}{a gsplot object}

\item{fun.name}{a function name (character)}

\item{legend.name}{the name to use for the legend name (can be \code{NULL})}

\item{side}{the side(s) that the arguments apply to}

\item{where}{location to put \code{call.args}.
Can be "first" or "last". Used in \code{\link{add_to_view}}}

\item{\dots}{arguments to be used in the above mentioned functions}
}
\value{
a code{gsplot} object
}
\description{
This function is a higher level internal function that deals with the dirty 
work of most of the \code{modify} type things that happen when adding a function 
call to a view or a side. This function sequentially filters the arguments into 
primary function call arguments, option args (things like view/side par args), and 
"extracted" arguments that inherit param values from the primary function call arguments.  
These arguments are then used in calls to \code{\link{modify_side}}, 
\code{\link{modify_side_par}}, \code{\link{modify_side_par}}, \code{\link{modify_view_par}},
\code{\link{add_to_view}}, and \code{\link{add_to_legend}}. Returned object is of class
\code{gsplot}
}
\keyword{internal}

