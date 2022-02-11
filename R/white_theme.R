#' Theme inspired by ggthemes::theme_fivethirtyeight
#' fivethirtyeight.com
#'
#' @import ggplot2
#' @export white_theme
#'
#' @param base_size size of font
#' @param font font you want to use

white_theme <- function(base_size = 12, font = "Lato") {

  ### Palette

  # http://www.cookbook-r.com/Graphs/Colors_(ggplot2)/#a-colorblind-friendly-palette
  cb_palette <- c(
    "#000000", "#E69F00", "#56B4E9", "#009E73",
    "#F0E442", "#0072B2", "#D55E00", "#CC79A7"
  )

  # https://www.color-hex.com/color-palette/74767
  tom_palette <- c("#003399", "#ff2b4f", "#3686d3", "#FCAB27", "#88398a")

  # murdoch theme https://gist.github.com/johnburnmurdoch/bd20db77b2582031604ccd1bdc4be582
  ft_palette <- c("#00218D", "#FF2B4F", "#0083EB", "#FCAB27", "#FF49EF")

  # colour pieces
  scale_fill_cb <- function() {
    structure(list(ggplot2::scale_fill_manual(values = cb_palette)))
  }
  scale_colour_discrete_cb <- function() {
    structure(list(ggplot2::scale_colour_manual(values = cb_palette)))
  }
  scale_color_continuous_cb <- function() {
    structure(list(ggplot2::scale_color_gradientn(colours = cb_palette)))
  }

  # Text Setting
  txt <- ggplot2::element_text(
    size = base_size + 2, colour = "black",
    face = "plain"
  )
  bold_txt <- ggplot2::element_text(
    size = base_size + 2, colour = "black",
    family = "Montserrat", face = "bold"
  )
  large_txt <- ggplot2::element_text(
    size = base_size + 4, color = "black",
    face = "bold"
  )
  ggplot2::theme_minimal(base_size = base_size, base_family = font) +
    ggplot2::theme(
      # Legend Settings
      legend.key = element_blank(),
      legend.background = element_blank(),
      legend.position = "bottom",
      legend.direction = "horizontal",
      legend.box = "vertical",
      # Backgrounds
      strip.background = element_rect(),
      plot.background = element_rect(),
      plot.margin = unit(c(1, 1, 1, 1), "lines"),
      # Axis & Titles
      text = txt, axis.text = txt,
      axis.ticks = element_blank(),
      axis.line = element_blank(),
      axis.title = bold_txt,
      plot.title = large_txt,
      # Panel
      panel.grid = element_line(colour = NULL),
      panel.grid.major = element_line(colour = "#D2D2D2"),
      panel.grid.minor = element_blank()
    )
}
