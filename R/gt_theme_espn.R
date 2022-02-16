#' ESPN GT Theme
#'
#' @param data
#' @param ...
#'
#' @import gt
#'
#' @return
#' @export gt_theme_espn
#'
#' @examples
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
