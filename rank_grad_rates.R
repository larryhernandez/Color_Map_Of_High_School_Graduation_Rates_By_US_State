rank_grad_rates<-function(rates){
# Description:  ranks graduation rates (or any numerical vector) in
#               descending order (i.e. small values are ranked with 
#               a large integer)
#
# Assumption: assumes x is a one dimensional array of integers 
#             or floating point numbers
#  
  dist_from_100 = 100-rates
  grad_ranks = rank(dist_from_100, na.last = TRUE, ties.method="first")
  return(grad_ranks)
}