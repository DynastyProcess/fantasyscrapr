test_that("choose season returns a character representation of a year",{
  expect_type(.fn_choose_season(),"character")
  expect_equal(.fn_choose_season("2020-03-01"),"2020")
  expect_equal(.fn_choose_season("2020-02-01"),"2019")
  expect_true(as.numeric(.fn_choose_season())<=lubridate::year(Sys.Date()))
})

with_mock_api({
  test_that(".fn_get returns a 'GET' function",{
    expect_is(.fn_get(TRUE,1,1)("http://httpbin.org"),"response")
    expect_is(.fn_get(FALSE)("http://httpbin.org"),"response")
                })
              })