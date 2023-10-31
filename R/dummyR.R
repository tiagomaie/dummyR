#' A dummy package to show how to easily create a package
#'
#' Some dummy functions
#'
#' @param input_data Parameter description.
#'  A longer parameter description.
#'
#' @return Description of what the function returns.
#'
#' @examples
#' # Example of how to use this function
#' library('dummyR')
#'
#' # load data
#' data(dataset_B)
#'
#' # run dummyR
#' dummyR(input_data = dataset_B)
#'
#' @export
dummyR <- function(
  input_data
){
  UseMethod("dummyR")
}


#' @export
dummyR.data.frame <- function(
  input_data
){
  assertthat::assert_that(is.data.frame(input_data))

  dummyR_base(input_data = input_data)
}

#' @export
dummyR.matrix <- function(
  input_data
){
  assertthat::assert_that(is.matrix(input_data))

  input_data <- as.data.frame(input_data)

  dummyR_base(input_data = input_data)
}


dummyR_base <- function(
  input_data
){

  assertthat::assert_that(ncol(input_data) == 2)

  plt <-
    input_data |>
    setNames(c("x","y")) %>%
    ggplot2::ggplot(ggplot2::aes(x = x, y = y)) + 
    ggplot2::geom_col()

  return(plt)
}


#' @rdname dummyR
#' @export
dummyr <- dummyR

#' @rdname dummyR
#' @export
dumr <- dummyR
