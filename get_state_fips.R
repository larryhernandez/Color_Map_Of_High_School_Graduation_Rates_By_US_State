get_state_fips<-function(value_to_lookup){

  string_containing_fips = lookup_code(value_to_lookup)
  
  # The following code is borrowed from a post created by MichaelChirico at: 
  # http://stackoverflow.com/questions/31777636/r-regex-get-the-text-between-single-quotes
  state_fips = as.integer(unlist(regmatches(string_containing_fips,gregexpr("(?<=')[0-9].+?(?=')",string_containing_fips,perl=TRUE))))
  return(state_fips)
}