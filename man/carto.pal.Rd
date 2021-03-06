% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palettes.R
\name{carto.pal}
\alias{carto.pal}
\alias{carto.pal.info}
\alias{display.carto.pal}
\alias{display.carto.all}
\title{Build Cartographic Palettes}
\usage{
carto.pal(
  pal1,
  n1,
  pal2 = NULL,
  n2 = NULL,
  middle = FALSE,
  transparency = FALSE
)

carto.pal.info()

display.carto.pal(name)

display.carto.all(n = 10)
}
\arguments{
\item{pal1}{name of the color gradient (see Details).}

\item{n1}{number of colors (up to 20).}

\item{pal2}{name of the color gradient (see Details).}

\item{n2}{number of colors (up to 20).}

\item{middle}{a logical value. If TRUE, a neutral color ("#F6F6F6", light 
grey) between two gradients is added.}

\item{transparency}{a logical value. If TRUE, contrasts are enhanced by 
adding an opacity variation.}

\item{name}{name of the palette available in the package (see Details).}

\item{n}{number of colors in the gradient (up to 20).}
}
\value{
\code{carto.pal} returns a vector of colors.

\code{carto.pal.info} returns a vector of color palettes names.
}
\description{
\code{carto.pal} builds sequential, diverging and qualitative color palettes. 
Diverging color palettes can be dissymmetric (different number of colors in 
each of the two gradients).

\code{carto.pal.info} displays the names of all color palettes.

\code{display.carto.pal} displays one color palette.

\code{display.carto.all} displays all the available color palettes.
}
\details{
Sequential palettes: "blue.pal", "orange.pal", "red.pal", 
"brown.pal", "green.pal", "purple.pal", "pink.pal", "wine.pal", "grey.pal", 
"turquoise.pal", "sand.pal", "taupe.pal", "kaki.pal" or "harmo.pal". \cr\cr
Qualitative palettes: "pastel.pal" or "multi.pal".
}
\examples{
# Simple gradient: blue
carto.pal(pal1 = "blue.pal" ,n1 = 20)

# Double gradient: blue & red
carto.pal(pal1 = "blue.pal", n1 = 10, pal2 = "red.pal", n2 = 10)

# Adding a neutral color
carto.pal(pal1 = "blue.pal", n1 = 10, pal2 = "red.pal", n2 = 10, middle = TRUE)

# Enhancing contrasts with transparency
carto.pal(pal1="blue.pal", n1 = 10, pal2 = "red.pal", n2 = 10, middle = TRUE,
          transparency = TRUE)

# The double gradient can be asymetric
carto.pal(pal1 = "blue.pal", n1 = 5, pal2 = "red.pal", n2 = 15, middle = TRUE,
          transparency = TRUE)

# Build and display a palette
mypal <- carto.pal(pal1 = "blue.pal", n1 = 5, pal2 = "red.pal", n2 = 15,
                   middle = TRUE, transparency = TRUE)
k <- length(mypal)
image(1:k, 1, as.matrix(1:k), col =mypal, xlab = paste(k," classes",sep=""),
      ylab = "", xaxt = "n", yaxt = "n",bty = "n")
carto.pal.info()
display.carto.pal("orange.pal")
display.carto.all(8)
}
\references{
Qualitative palettes were generated with "i want hue" 
(\url{http://tools.medialab.sciences-po.fr/iwanthue/}) by Mathieu Jacomy at 
the Sciences-Po Medialab.
}
