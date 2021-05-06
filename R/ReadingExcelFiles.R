#' Samudra please add a short description here
#'
#'@description
#'@param path
#'@param pattern
#'@param all.files
#'@param full.names
#'@param recursive
#'@param ignore.case
#'@param include.dirs
#'@param no.. (Samudra please change the input name. Any reason for changing the name to no..?)
#'@importFrom
#'@importFrom
#'@importFrom
#'@importFrom
#'@importFrom
#'@return
#'@export
Processed_Data<-function(processed_data_path)
{
  Disease_Counts_csv <- list.files(path = ".", pattern = NULL, all.files = FALSE,
                                   full.names = FALSE, recursive = FALSE,
                                   ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)
  Data_Counts <- as_tibble (rbindlist (lapply (Disease_Counts_csv , fread),fill = T))
  Data_Counts<-Data_Counts%>%relocate(Year,Week,StartDate,EndDate,.before=Division)
  Data_Counts<-Data_Counts%>%arrange(StartDate)
  setwd(here::here("data"))
  save (Data_Counts, file = 'FinalData.Rda')
}
processed_data_path=setwd(here::here("dataraw"))
Processed_Data(processed_data_path)
load(file = "FinalData.Rda")
Data_Counts
