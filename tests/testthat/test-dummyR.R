test_that("Returns expected value", {

  res <- dummyR(input_data = dataset_A)

  # check results
  expect_true(ggplot2::is.ggplot(res))
})


test_that("Fails with no input", {

  # check results
  expect_error(dummyR())
})
