# expect_type(x, type) checks that typeof(x) is type.
# In this function, we check if the output type is consistent (all output is `list` type)
test_that("The function returns a list", {
  expect_type(sumFun(gapminder::gapminder, lifeExp, continent), "list")
  expect_type(sumFun(palmerpenguins::penguins, body_mass_g, species), "list")
})

# expect_error() check that code throws an error with a message
# The second parameter should be numeric column name, this will cause function throw an error
test_that("Test the function input type", {
  expect_error(sumFun(gapminder::gapminder, country, continent))
})

# Use expect_equal() to check the output content
sum1 <- dplyr::group_by(palmerpenguins::penguins, species)
sum <- dplyr::summarise(sum1, mean = mean(body_mass_g, na.rm = TRUE),
                        range = range(body_mass_g, na.rm = TRUE),
                        median = median(body_mass_g, na.rm = TRUE),
                        .groups = 'keep')

test_that("Test the output content", {
  expect_equal(sumFun(palmerpenguins::penguins, body_mass_g, species), sum) # result2 is the return output of the function
})
