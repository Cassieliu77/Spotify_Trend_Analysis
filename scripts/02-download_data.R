#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


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
