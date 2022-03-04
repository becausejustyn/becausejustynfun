
#' 538 ggplot theme
#'
#' @param base_size size of font
#' @param base_family font used
#'
#' @details a 538 theme for ggplot
#'
#' @inheritParams ggplot2::theme_grey
#' @family themes theme_538
#' @export
#' @examples ggplot(mtcars, aes(x = mpg)) + geom_histogram() + theme_538()
#' @importFrom grid unit

theme_538 <- function(base_size = 13, base_family = "") {
  ggplot2::theme_grey(base_size = base_size, base_family = base_family) %+replace%
    ggplot2::theme(

      # Base elements which are not used directly but inherited by others
      line = element_line(
        colour = "#DADADA", size = 0.75,
        linetype = 1, lineend = "butt"
      ),
      rect = element_rect(
        fill = "#F0F0F0", colour = "#F0F0F0",
        size = 0.5, linetype = 1
      ),
      text = element_text(
        family = base_family, face = "plain",
        colour = "#656565", size = base_size,
        hjust = 0.5, vjust = 0.5, angle = 0,
        lineheight = 0.9
      ),

      # Modified inheritance structure of text element
      plot.title = element_text(
        size = rel(1.5), family = "",
        face = "bold", hjust = -0.05,
        vjust = 1.5, colour = "#3B3B3B"
      ),
      axis.title.x = element_blank(),
      axis.title.y = element_blank(),
      axis.text = element_text(),

      # Modified inheritance structure of line element
      axis.ticks = element_line(),
      panel.grid.major = element_line(),
      panel.grid.minor = element_blank(),

      # Modified inheritance structure of rect element
      plot.background = element_rect(),
      panel.background = element_rect(),
      legend.key = element_rect(colour = "#DADADA"),

      # Modifiying legend.position
      legend.position = "none",
      complete = TRUE
    )
}
