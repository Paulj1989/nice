test_that("check_df returns correct response", {
  df <- data.frame(1:100)
  nice <- check_df(df)
  expect_type(nice, "character")
})
