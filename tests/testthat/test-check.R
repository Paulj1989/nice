test_that("check returns correct response", {
  nice <- check(69)
  expect_type(nice, "character")
})
