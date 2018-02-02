context("Ordinal Jo Definition (excluding Kyoto)")

test_that("convert", {
  jo <- 10
  expectedSquareMeter = 33*2
  expect_equal(convertJoToSquareMeter(jo), expectedSquareMeter)
  expect_equal(jo, convertSquareMeterToJapaneseJo(expectedSquareMeter))
})
