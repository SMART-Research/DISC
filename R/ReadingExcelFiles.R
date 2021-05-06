#' Single data table from generated excel files
#'
#'@description Weekly notified Dengue, Dysentery, Encephalitis, Enteric Fever,
#'Food Poisioning, Leptospirosis, Typhus Fever, Viral Hepatistis, Human Rabies,
#'Chickenpox, Meningitis and Leishmaniasis cases in 26 districts of Sri Lanka
#'from 2006/week-52 to 2020/week-51
#'@param processed_data_path location of generated excel files
#'@importFrom tsibble as_tibble
#'@importFrom data.table rbindlist
#'@importFrom dplyr relocate
#'@importFrom dplyr arrange
#'@importFrom data.table fread
#'@importFrom here here
#'@return a table in which columns contain ID, Year, week, StartDate, EndDate and disease counts.
#'Rows represents divisions of Sri Lanka.
#'@export
Processed_Data<-function(processed_data_path)
{
  Disease_Counts_csv <- list.files(path = ".", pattern = NULL, all.files = FALSE,
                                   full.names = FALSE, recursive = FALSE,
                                   ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)
  Data_Counts <- tsibble::as_tibble (data.table::rbindlist (lapply (Disease_Counts_csv , data.table::fread),fill = T))
  Data_Counts<-Data_Counts%>%dplyr::relocate(Year,Week,StartDate,EndDate,.before=Division)
  Data_Counts<-Data_Counts%>%dplyr::arrange(StartDate)
  setwd(here::here("data"))
  save (Data_Counts, file = 'FinalData.Rda')
  return(Data_Counts)
}
processed_data_path=setwd(here::here("dataraw"))
Processed_Data(processed_data_path)
load(file = "FinalData.Rda")
Data_Counts
