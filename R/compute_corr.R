#The compute_corr function is a wrapper for cor.test that produces tidy
#output for Pearson’s correlation estimate (along with a p-value) to quantify
#the linear relationship between two quantitative variables.

#' Computes a tidy correlation
#'
#' @importFrom rlang .data
#'
#' @param data input data set
#' @param var1 name of variable 1
#' @param var2 name of variable 2
#'
#' @return A tibble with the Pearson correlation and the p-value
#' @export
#'
#' @examples
#' compute_corr(data = faithful, var1 = eruptions, var2 = waiting)
compute_corr <- function(data, var1, var2){

  # compute correlation ----
  stats::cor.test(
    x = dplyr::pull(data, {{var1}}),
    y = dplyr::pull(data, {{var2}})
  ) %>%
    # tidy up results ----
  broom::tidy() %>%
    # retain and rename relevant bits ----
  dplyr::select(
    correlation = .data$estimate,
    pval = .data$p.value
  )

}
