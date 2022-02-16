#' ESPN GT Theme
#' @param gt_object An existing gt table object of class `gt_tbl`
#' @param ... Optional additional arguments to `gt::table_options()`
#' @return An object of class `gt_tbl`.
#' @importFrom gt %>%
#' @export
#' @import gt
#' @examples
#'
#' library(gt)
#' themed_tab <- head(mtcars) %>%
#'   gt() %>%
#'   gt_theme_espn()
#' @section Figures:
#' \if{html}{\figure{gt_espn.png}{options: width=100\%}}

gt_theme_espn <- function(data, ...){
  data %>%
    opt_all_caps()  %>%
    gt::opt_table_font(
      font = list(
        google_font("Lato"),
        default_fonts()
      )
    )  %>%
    gt::opt_row_striping() %>%
    gt::tab_options(
      row.striping.background_color = "#fafafa",
      table_body.hlines.color = "#f6f7f7",
      source_notes.font.size = 12,
      table.font.size = 16,
      table.width = px(700),
      heading.align = "left",
      heading.title.font.size = 24,
      table.border.top.color = "transparent",
      table.border.top.width = px(3),
      data_row.padding = px(7),
      ...
    )
}


