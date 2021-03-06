# gotten from https://github.com/koundy/ggplot_theme_Publication
library(grid)
library(ggthemes)

#' Title
#'
#' @import ggplot2
#' @import grid
#' @import ggthemes
#'
#' @param base_size size of font
#' @param base_family what font
#'
#' @export theme_dark_blue
#'

theme_dark_blue <- function(base_size = 14, base_family = "sans") {
  ggthemes::theme_foundation(base_size = base_size, base_family = base_family) +
    ggplot2::theme(
      plot.title = element_text(
        face = "bold", colour = "#ffffb3",
        size = rel(1.2), hjust = 0.5, margin = margin(0, 0, 20, 0)
        ),
      text = element_text(),
      panel.background = element_rect(colour = NA, fill = "#282C33"),
      plot.background = element_rect(colour = NA, fill = "#282C33"),
      panel.border = element_rect(colour = NA),
      axis.title = element_text(face = "bold", size = rel(1), colour = "white"),
      axis.title.y = element_text(angle = 90, vjust = 2),
      axis.title.x = element_text(vjust = -0.2),
      axis.text = element_text(colour = "grey70"),
      axis.line.x = element_line(colour = "grey70"),
      axis.line.y = element_line(colour = "grey70"),
      axis.ticks = element_line(colour = "grey70"),
      panel.grid.major = element_line(colour = "#343840"),
      panel.grid.minor = element_blank(),
      legend.background = element_rect(fill = "#282C33"),
      legend.text = element_text(color = "white"),
      legend.key = element_rect(colour = NA, fill = "#282C33"),
      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.box = "vetical",
      legend.key.size = unit(0.5, "cm"),
      # legend.margin = unit(0, "cm"),
      legend.title = element_text(face = "italic", colour = "white"),
      plot.margin = unit(c(10, 5, 5, 5), "mm"),
      strip.background = element_rect(colour = "#2D3A4C", fill = "#2D3A4C"),
      strip.text = element_text(face = "bold", colour = "white")
    )
}
