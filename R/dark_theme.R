library(grid)
library(ggthemes)

#' Title
#'
#' @param ...
#'
#' @import ggplot2
#'
#' @export dark_theme
#'


dark_theme <- function(...) {
  ggplot2::theme(
    legend.text = element_text(color = "white"),
    legend.background = element_rect(fill = "#1e1e1e", color = "#1e1e1e"),
    legend.key = element_rect(fill = "#1e1e1e"),
    title = element_text(colour = "white"),
    axis.text = element_text(color = "white"),
    axis.line = element_line(color = "white"),
    axis.line.x.bottom = element_blank(),
    axis.line.y.left = element_blank(),
    axis.title = element_text(color = "white"),
    axis.ticks = element_blank(),
    panel.border = element_blank(),
    panel.background = element_blank(),
    plot.background = element_rect(fill = "#1e1e1e", color = "#1e1e1e"),
    strip.background = element_rect(fill = "#1e1e1e"),
    strip.text = element_text(colour = "white"),
    ...
  )
}

# Colours
c_blue <- "#2D98D9"
c_red <- "#DE6B97"
c_orange <- "#BF8521"
c_green <- "#59A229"
