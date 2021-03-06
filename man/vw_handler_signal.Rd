% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/js-handler.R
\name{vw_handler_signal}
\alias{vw_handler_signal}
\alias{vw_handler_data}
\alias{vw_handler_event}
\title{Construct a JavaScript handler}
\usage{
vw_handler_signal(body_value)

vw_handler_data(body_value)

vw_handler_event(body_value)
}
\arguments{
\item{body_value}{\code{character}, the name of a defined handler-body,
or the text of the body of a handler-function}
}
\value{
object with S3 class \code{vw_handler}
}
\description{
A Vega listener needs a JavaScript handler-function to call
when the object-being-listened-to changes. For instance, \link{shiny-getters} and
\link{add-listeners} functions each have an argument called
\code{body_value}, which these functions help you build.
}
\details{
There are two types of handlers defined in this package's handler-library.
To see the handlers that are defined for each, call the function
without any arguments:
\itemize{
\item \code{vw_handler_signal()}
\item \code{vw_handler_data()}
\item \code{vw_handler_event()}
}

With a JavaScript handler, you are trying to do two types of things:
\itemize{
\item calculate a value based on the handler's arguments
\item produce a side-effect based on that calculated value
}

Let's look at a concrete example.
A \href{https://github.com/vega/vega/tree/master/packages/vega-view#view_addSignalListener}{signal handler}
will take arguments \code{name} and \code{value}. Let's say that we want to
return the value. We could do this two ways:
\itemize{
\item \code{vw_handler_signal("value")}: use this package's handler library
\item \code{vw_handler_signal("return value;")}: supply the body of the
handler-function yourself
}

In the list above, the two calls do exactly the same thing, they build a
JavaScript function that returns the \code{value} provided by whatever is calling
the signal-handler. This will be a valid signal-handler, however, we will
likely want a signal-handler to \emph{do} something with that value, which is
why we may wish to add a side-effect.

Let's say we want the handler to print the value to the JavaScript console.
We would create the signal-handler, then add an effect to print the result
to the console.

\code{vw_handler_signal("value") \%>\% vw_handler_add_effect("console")}

We can add as many effects as we like; for more information,
please see the documentation for \code{\link[=vw_handler_add_effect]{vw_handler_add_effect()}}.

Please be aware that these functions do \emph{not} check for the correctness
of JavaScript code you supply - any errors you make will not be apparent
until your visualization is rendered in a browser.

One last note, if \code{body_value} is already a \code{vw_handler}, these functions
are no-ops; they will return the \code{body_value} unchanged.
}
\examples{
  # list all the available signal-handlers
  vw_handler_signal()

  # list all the available data-handlers
  vw_handler_data()

  # list all the available event-handlers
  vw_handler_event()

  # use a defined signal-handler
  vw_handler_signal("value")

  # define your own signal-handler
  vw_handler_signal("return value;")
}
\seealso{
\code{\link[=vw_handler_add_effect]{vw_handler_add_effect()}}
vega-view:
\href{https://github.com/vega/vega/tree/master/packages/vega-view#view_addSignalListener}{addSignalListener()},
\href{https://github.com/vega/vega/tree/master/packages/vega-view#view_addDataListener}{addDataListener()},
\href{https://github.com/vega/vega/tree/master/packages/vega-view#view_addEventListener}{addEventListener()}
}
