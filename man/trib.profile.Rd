% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/tribF.R
\name{trib.profile}
\alias{trib.profile}
\title{\code{trib.profile} gets file name length, filterValue and combined graph,
single graphs, Wear Track Volume bar plot and full profile for data and
generates WTArea global variable}
\usage{
trib.profile(x, filterValue, r, CombinedTrack = TRUE, SingleTrack = TRUE,
  FullProfile = FALSE, WTVBar = TRUE)
}
\arguments{
\item{x}{Numeric value length of file name for truncation. Truncated file name
is given at output for ease of use.}

\item{filterValue}{Numeric value for setting for rolling average from package
\code{zoo}}

\item{r}{Numeric value for setting radius (in mm) of wear track that will be used
for generating Wear Track Volume. This version doesn't support reciprocating
tests so to generate Wear Track Volume please use WTArea vector instead and
give 1 for r value}

\item{CombinedTrack}{logical scalar checking whether to plot combined graph of
all data or not}

\item{SingleTrack}{logical scalar checking whether to plot single graphs of
all data or not}

\item{FullProfile}{logical scalar checking whether to plot full profiles of
each data in a seperate file or not}

\item{WTVBar}{logical scalar checking whether to plot bar graph of Wear Track
 Volume of all data}
}
\value{
Plots profile scatter plots with given filter value if CombinedTrack,
 SingleTrack, FullProfile or a bar plot if WTVBar options are set, else will
 return nothing. Generates Wear Track Area (WTArea) global variable

Set work directory to file containing example data
for profilometer directory should be
}
\description{
\code{trib.profile} gets file name length, filterValue and combined graph,
single graphs, Wear Track Volume bar plot and full profile for data and
generates WTArea global variable
}
\section{Warning}{


 Before using this function please set your working directory to the
 directory that contains .csv files from profilometer File structure should
 be as follows: Seperation is \code{,} and text is \code{""}
 \tabular{ccc}{
 "Distance" \tab , \tab "Profile" \cr
 "0,00050"\tab , \tab "-0,08"
 }

 You can check example datasets at package files exdata/profilometer

 This version doesn't support linear wear tracks. You can still use
 \code{trib.profile} but you have to set r to any numeric value and use
 WTArea vector to calculate Wear Track Volume
}
\examples{
setwd(paste(path.package("trib"),"/exdata/profile",sep=""))

trib.profile(2,100,3)

trib.profile(2, 100, 3, CombinedTrack=FALSE)

trib.profile(2, 100, 3, SingleTrack=FALSE)

trib.profile(2, 100, 3, FullProfile=TRUE )

trib.profile(2, 100, 3, WTVBar=FALSE)
}

