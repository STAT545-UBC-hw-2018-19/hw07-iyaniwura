context("Conducting tests")

test_that("At least numeric values work.", {
    num_vec <- c(0, -4.6, 3.4)
    res <- c(-0.50, 10.08,  5.28)
    expect_identical(square(num_vec), num_vec^2)
    expect_identical(cube(num_vec), num_vec^3)
    expect_identical(reciprocal(num_vec), 1/num_vec)
    expect_identical(Box_Cox(num_vec,2), res)
})

test_that("Logicals automatically convert to numeric.", {
    logic_vec <- c(TRUE, TRUE, FALSE)
    res2 <- c( 0.0,  0.0, -0.5)
    L1 <- TRUE
    res3 <- c(0,  0, -1)
    expect_identical(square(logic_vec), logic_vec^2)
    expect_identical(cube(logic_vec), logic_vec^3)
    expect_identical(Box_Cox(logic_vec,2), res2)
    expect_identical(Box_Cox(logic_vec,L1), res3)
})
