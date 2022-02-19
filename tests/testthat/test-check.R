test_that("check returns correct type of response", {
  nice <- check(69)
  expect_type(nice, "character")
})

test_that("check returns correct positive response", {
  nice <- check(69)
  expect_equal(nice, "Nice!")
})

test_that("check returns correct negative response", {
  nice <- check(420)
  expect_equal(nice, "Not very nice.")
})
