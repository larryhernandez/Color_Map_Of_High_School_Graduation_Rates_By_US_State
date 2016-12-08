num_instances_category_is_min<-function(data_frame,target_col,column_range){
  
  num_instances_min = 0
  for (jj in 1:nrow(data_frame)){
    num_instances_min = num_instances_min + 
      (!is.na(data_frame[jj,target_col]) && (data_frame[jj,target_col] == min(data_frame[jj,column_range], na.rm = TRUE)))
  }
  return(num_instances_min)
}