test_that("check_always() adds callback", {
  expect_message(
    check_always(),
    "Now checking whether all output is nice"
  )

  expect_true("nice_callback" %in% getTaskCallbackNames())
})

test_that("uncheck_always() removes callback", {
  expect_message(check_always())

  expect_message(
    uncheck_always(),
    "No longer checking whether all output is nice"
  )

  expect_false("nice_callback" %in% getTaskCallbackNames())
})

test_that("verbose argument controls messages", {
  expect_silent(check_always(verbose = FALSE))
  expect_true("nice_callback" %in% getTaskCallbackNames())

  expect_silent(uncheck_always(verbose = FALSE))
  expect_false("nice_callback" %in% getTaskCallbackNames())
})

test_that("check_always() doesn't add duplicate callback tasks", {
  check_always(verbose = FALSE)

  callback_list <- getTaskCallbackNames()

  expect_message(
    check_always(),
    "Already checking whether all output is nice"
  )

  expect_identical(getTaskCallbackNames(), callback_list)
})

test_that("uncheck_always() does nothing if there is no task callback", {
  uncheck_always(verbose = FALSE)

  callback_list <- getTaskCallbackNames()

  expect_message(
    uncheck_always(),
    "Not checking whether all output is nice"
  )

  expect_identical(getTaskCallbackNames(), callback_list)
})

test_that("nice_callback() gives message for nice values", {
  expect_message(
    nice_callback(quote(69), 69, TRUE, TRUE),
    "Nice!"
  )

  expect_silent(
    nice_callback(quote(420), 420, TRUE, TRUE)
  )
})

test_that("nice_callback() doesn't give message for invisible values", {
  expect_silent(
    nice_callback(quote(invisible(69)), 69, TRUE, FALSE)
  )
})
