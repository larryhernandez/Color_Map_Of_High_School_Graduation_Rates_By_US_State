rank_grad_rates<-function(rates){
#
# Description:  ranks graduation rates (or any numerical vector) in
#               descending order (i.e. small values are ranked with 
#               a large integer)
#
# Assumption:   assumes 'rates' is a numerical vector of values, where
#               currently the maximum achievable value is 100
# 
# Input:
#   rates:      numerical vector of length N for which the values are ranked. 
#               The smallest element is assigned rank N, and the largest value
#               is assigned a rank of 1. Ties are broken by the rule that the
#               first element observed is given rank k, and the next element 
#               (of the same numerica value) is given rank "k+1", etc.
#
# Output:
#   ranks:      numerical vector containing the rank of the elements 
#               in 'rates'
 
  dist_from_100 = 100-rates
  grad_ranks = rank(dist_from_100, na.last = TRUE, ties.method="first")
  return(grad_ranks)
}