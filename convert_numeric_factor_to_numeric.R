convert_numeric_factor_to_numeric <-function(my_factor){
  # DESCRIPTION: Converts the factor variable my_factor, which appears to be numeric, into a numeric variable
  #              Also, this function removes a leading = sign.
  #
  # EXAMPLE:     convert_numeric_factor_to_integer("5.9") returns the numeric variable 5.9
  #
  # INPUTS:
  #   my_factor             factor variable posing as a numerical variable
  #
  # OUTPUT:
  #   numeric variable version of the intput variable
  #  

  character_string = unfactor(my_factor)
  if (is.element(substr(character_string,1,1), '=')){
    character_string = substr(character_string,2,nchar(character_string))
  }
  
  return(as.numeric(character_string))
}