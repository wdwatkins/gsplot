context("pass view arguments w/ view function")


test_that("ylim", {
  
  gs <- view(gsplot(), ylim=c(0, 8.5))
  expect_equal(ylim(gs, 2), c(0, 8.5))
  gs <- gsplot() %>% points(1,2, ylim=c(1,2)) %>% view(ylim=c(0, 8.5))
  expect_equal(ylim(gs, 2), c(0, 8.5))
})

test_that("frame.plot", {
  
  gs <- gsplot() %>% points(1,2, ylim=c(1,2)) %>% view(frame.plot = FALSE, axes=FALSE)
  expect_false(gs$global$config$frame.plot)
  expect_false(gs$side.1$axes)
})
