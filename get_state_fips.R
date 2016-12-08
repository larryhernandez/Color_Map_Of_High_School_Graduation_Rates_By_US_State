get_state_fips<-function(state){
#
# Description:  Uses lookup_code from tigris library package to get two digit
#               FIPS code for a given US state.
#
# Inputs:
#   state:      The same 'state' input that is used for lookup_code() function:
#               "String representing the state you'd like to look up. Accepts 
#               state names (spelled correctly), e.g. "Texas", or postal codes, 
#               e.g. "TX". Can be lower-case.
#
# Output:       numeric variable containing the two-digit FIPS code for the state
#               of interest

  
  # Use lookup_code from the tigris library to get FIPS code for each state
  # Note: returns string message. Must extract two digits of interest.
  string_containing_fips = lookup_code(state)
  
  # The following code is borrowed from a post created by MichaelChirico at: 
  # http://stackoverflow.com/questions/31777636/r-regex-get-the-text-between-single-quotes
  state_fips = as.integer(unlist(regmatches(string_containing_fips,gregexpr("(?<=')[0-9].+?(?=')",string_containing_fips,perl=TRUE))))
  return(state_fips)
}