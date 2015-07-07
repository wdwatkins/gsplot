#' gsplot arrows
#'
#' arrows stuff
#' 
#' @details Add additional functionality to points.
#' 
#' @param object gsplot object
#' @param \dots Further graphical parameters may also be supplied as arguments. See 'Details'.
#' @return modified gsplot object 
#' @export
#' @examples
#' gs <- gsplot() %>%
#'    points( y=c(3,1,2), x=1:3, xlim=c(0,NA),ylim=c(0,NA),
#'             col="blue", pch=18, legend.name="Points", xlab="Index") %>%
#'    lines(c(3,4,3), c(2,4,6), legend.name="Lines", ylab="Data") %>%
#'    abline(b=1, a=0, legend.name="1:1") %>%
#'    legend("topleft",title="Awesome!") %>%
#'    grid() %>%
#'    error_bar_vertical(x=1:3, y=c(3,1,2), y.high=c(0.5,0.25,1), y.low=0.1) %>%
#'    error_bar_horizontal(x=1:3, y=c(3,1,2), x.low=.2, x.high=.2, col="red",lwd=3) %>%
#'    arrows(x0=0.75, y0=2, x1=1, y1=2.8, lwd=2) %>%
#'    title("Graphing Fun") %>%
#'    text(.75,1.75,labels="Weird data")
#' gs
arrows <- function(object, ...) {
  overrideGraphics("arrows", object, ...)
}


arrows.gsplot <- function(object, ..., legend.name=NULL, side=c(1,2)){
  current_list <- config("arrows")
  arguments <- list(...)
  
  indicesToAdd <- !(names(current_list) %in% names(arguments))
  arguments <- append(arguments, current_list[indicesToAdd])
  
  object <- append(object,  list(arrows = list(arguments = arguments, 
                                               gs.config=list(legend.name = legend.name, 
                                                              side = side))))
  return(gsplot(object))
}