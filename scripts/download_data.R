#### Preamble ####
# Purpose: Downloads and saves the data from spotify package.
# Author: Xuanle Zhou, Dezhen Chen, Yongqi Liu, Ziyuan Shen, Leo Liu
# Date: today
# Contact: cassieliu.liu@mail.utoronto.ca


#### Workspace setup ####
#devtools::install_github("charlie86/spotifyr")
library(usethis)
library(devtools) 

#edit_r_environ()
#install_version("spotifyr", version = "2.2.3")

library(tidyverse)
library(spotifyr)


#### Download data ####
ed_sheeran <- get_artist_audio_features("Ed Sheeran")
jj_lin <- get_artist_audio_features("JJ Lin")
radiohead <- get_artist_audio_features("radiohead")

#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
saveRDS(ed_sheeran, "data/01-raw_data/ed_sheeran.rds")
#write_csv(ed_sheeran, "data/01-raw_data/ed_sheeran.csv")
saveRDS(jj_lin, "data/01-raw_data/jj_lin.rds")
saveRDS(radiohead, "data/01-raw_data/radiohead.rds")    
