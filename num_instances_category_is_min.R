num_instances_category_is_min<-function(data_frame,target_col,column_range){
# 
# Description:  Given a data.frame, and a collection of columns that can be 
#               compared, will return the number of records (i.e. rows) that 
#               a given column of interest (i.e. target_col) within that 
#               collection of columns contains the minimal value among
#               the records examined.
#               (i.e. Columns labeled T)
#
# Inputs:
#   data_frame    the data_frame containing the columns of interest
#   target_col    vector (numerical or character) to reference the primary
#                 column of interest
#   column_range  vector (numerical or character string) of the names or 
#                 numerical labels of all columns of interest
#
# Outputs:
#   numerical variable denoting the number of rows of target_col that contained the minimal
#   value when compared to the same rows of the other columns.
#  
   
  num_instances_min = 0
  for (jj in 1:nrow(data_frame)){
    num_instances_min = num_instances_min + 
      (!is.na(data_frame[jj,target_col]) && (data_frame[jj,target_col] == min(data_frame[jj,column_range], na.rm = TRUE)))
  }
  return(num_instances_min)
}