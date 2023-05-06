test_that("check_df function returns correct type of response", {
  df <- data.frame(var = 1:100)
  expect_type(check_df(df), "character")
})

test_that("check_df function returns correct positive responses", {
  num_df <- data.frame(var = 1:100)
  char_df <- data.frame(var = c("ten", "twenty", "thirty", "sixty nine"))
  expect_equal(check_df(num_df), "Nice!")
  expect_equal(check_df(char_df), "Nice!")
})

test_that("check_df returns correct negative responses", {
  num_df <- data.frame(var = 1:10)
  char_df <- data.frame(var = c("ten", "twenty", "thirty"))
  expect_equal(check_df(num_df), "Not very nice.")
  expect_equal(check_df(char_df), "Not very nice.")
})
