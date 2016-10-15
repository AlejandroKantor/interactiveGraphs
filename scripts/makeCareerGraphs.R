rm(list=ls())

library(data.table)
library(reshape2)
library(ggplot2)
library(partykit)
library(plotly)
library(RColorBrewer)

# import functons
source("./scripts/functions.R")

# if plotly user and key file exist upload
s_plotly_user_key_file <- "./scripts/plotlyUserAndKey.R"
b_exists_plotly_user_key <- file.exists(s_plotly_user_key_file)

if(b_exists_plotly_user_key==TRUE){
  source(s_plotly_user_key_file)
} else {
  warning( paste0("The program expects you have your plotly username and key in \n",
                  s_plotly_user_key_file))
}


# if data file exists load, if not execute ETL
s_file_data <- "./data/output/DtData.RData"
if( file.exists( s_file_data)){
  load(s_file_data)
} else {
  s_path_data <- "./data/output/ponteEnCarrera.csv"
  s_path_family <- "./data/output/familia.csv"
  dt_data <- makePonteEncarreraETL( s_path_data, s_path_family, b_save_result=T)
}

# for different types of x axis make cost/income graph and pass to plotly
v_s_cost_type <- c("min" , "max", "mid range")

for(s_cost_type in v_s_cost_type){
  s_name_ext <- gsub(" ", "", s_cost_type)
  p_costo_ingreso <- makeCostIncomeGraph(dt_data, s_cost_type = s_cost_type)
  print(p_costo_ingreso)
  
  if(b_exists_plotly_user_key == T){
    plotly_POST(p_costo_ingreso,  
                filename=paste0("r-docs/costoIngreso",s_name_ext),
                fileopt="overwrite", 
                world_readable=TRUE)
  } else {
    message( "plotly graph is not saved because user and key is not provided")
  }
  
}


