#' Summary statistics of numeric variable
#'
#' @description
#' This function do the summary statistics of one given numerical variable
#' across the groups of another given variable in a given dataset.
#'
#' @param data The dataset which need to be explore.
#' This parameter is named `data` because it tells the user intuitively that
#' we need a dataset as the first parameter.
#'
#' @param x The numeric column name, which need to be summarized
#'
#' @param y Another column name, the dataset can be grouped by this variable
#'
#' @return summarise_result: A list which contains the mean, range, median of numeric variable
#'
#' @examples
#' result1 <- sumFun(palmerpenguins::penguins, body_mass_g, species)
#' result2 <- sumFun(gapminder::gapminder, lifeExp, continent)
#'
#' @export
sumFun <- function(data, x, y) {
  calculations <- dplyr::summarise(data,
                                   is_numeric_x = is.numeric({{x}}),
                                   class_x = class({{x}}))

  if (!calculations$is_numeric_x){
    stop("Selected column is not numeric. ",
         "Class of x is: ",
         calculations$class_x)
  }
  data1 <- dplyr::group_by(data, {{y}})
  summarise_result <- dplyr::summarise(data1, mean = mean({{x}}, na.rm = TRUE),
                                       range = range({{x}}, na.rm = TRUE),
                                       median = median({{x}}, na.rm = TRUE),
                                       .groups = 'keep')

  return(summarise_result)

}
