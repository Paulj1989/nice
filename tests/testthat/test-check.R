test_that("check function returns correct type of response", {
  expect_type(check(69), "character")
})

test_that("check functions returns correct positive responses", {
  expect_equal(check(0.69), "Nice!")
  expect_equal(check(69), "Nice!")
  expect_equal(check("sixty nine"), "Nice!")
})

test_that("check functions returns correct negative responses", {
  expect_equal(check(0.420), "Not very nice.")
  expect_equal(check(420), "Not very nice.")
  expect_equal(check("four twenty"), "Not very nice.")
})
