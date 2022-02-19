test_that("check_df returns correct type of response", {
  df <- data.frame(1:100)
  nice <- check_df(df)
  expect_type(nice, "character")
})


test_that("check_df returns correct positive response", {
  df <- data.frame(1:100)
  nice <- check_df(df)
  expect_equal(nice, "Nice!")
})

test_that("check_df returns correct negative response", {
  df <- data.frame(1:10)
  nice <- check_df(df)
  expect_equal(nice, "Not very nice.")
})
