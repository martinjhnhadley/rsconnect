\name{rsconnectOptions}
\alias{rsconnectOptions}

\title{Package Options}

\description{
The \pkg{rsconnect} package supports several options that control the method used for http communications, the printing of diagnostic information for http requests, and the launching of an external browser after deployment.
}

\details{
Supported global options include:
\describe{
   \item{\code{rsconnect.ca.bundle}}{Path to a custom bundle of Certificate Authority root certificates to use when connecting to servers via SSL. This option can also be specied in the environment variable \code{RSCONNECT_CA_BUNDLE}. Leave undefined to use your system's default certificate store.}
   \item{\code{rsconnect.check.certificate}}{Whether to check the SSL certificate when connecting to a remote host; defaults to \code{TRUE}. Setting to \code{FALSE} is insecure, but will allow you to connect to hosts using invalid certificates as a last resort.}
   \item{\code{rsconnect.http}}{Http implementation used for connections to the back-end service:
   \tabular{ll}{
     \code{rcurl} \tab Secure https using the \code{RCurl} package\cr
     \code{curl} \tab Secure https using the curl system utility \cr
     \code{internal} \tab Insecure http using raw sockets\cr
   }
   If no option is specified then \code{rcurl} is used by default.
   }
   \item{\code{rsconnect.http.trace}}{When \code{TRUE}, trace http calls (prints the method, path, and total milliseconds for each http request)}
   \item{\code{rsconnect.http.trace.json}}{When \code{TRUE}, trace JSON content (shows JSON payloads sent to and received from the server))}
   \item{\code{rsconnect.http.verbose}}{When \code{TRUE}, print verbose output for http connections (useful only for debugging SSL certificate or http connection problems)}
   \item{\code{rsconnect.error.trace}}{{When \code{TRUE}, print detailed stack traces for errors occurring during deployment.}}
   \item{\code{rsconnect.launch.browser}}{When \code{TRUE}, automatically launch a browser to view applications after they are deployed}
   \item{\code{rsconnect.locale.cache}}{When \code{FALSE}, disable the detected locale cache (Windows only). }
   \item{\code{rsconnect.locale}}{Override the detected locale. }
   \item{\code{rsconnect.max.bundle.size}}{The maximum size, in bytes, for deployed content. If not set, defaults to 3 GB.}
   \item{\code{rsconnect.max.bundle.files}}{The maximum number of files to deploy. If not set, defaults to 10,000.}
}
}

\examples{
\dontrun{

# use curl for http connections
options(rsconnect.http = "curl")

# trace http requests
options(rsconnect.http.trace = TRUE)

# print verbose output for http requests
options(rsconnect.http.verbose = TRUE)

# print JSON content
options(rsconnect.http.trace.json = TRUE)

# don't automatically launch a browser after deployment
options(rsconnect.launch.browser = FALSE)
}
}

