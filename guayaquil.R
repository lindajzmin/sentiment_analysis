
### Loading packages ####
library(rtweet)
library(tidyverse)
library(lubridate)
library(wordcloud2)
library(RColorBrewer)
library(ggwordcloud)
library(gridExtra)
library(scales)
library(tidytext)
library(igraph)
library(ggraph)
library(quanteda)
library(e1071)
library(ggjoy)
library(dplyr)
library(cluster)
library(tm)
library(knitr)

## authenticate via web browser
token <- create_token(
    app = "Fun_linda",
    consumer_key = consumer_key,
    consumer_secret = consumer_secret,
    access_token = access_token,
    access_secret = access_secret)


## se dsecargó un millon de tweets, en español....
guayaquil <- search_tweets2(c("\"guayaquil\" AND \"alcaldia\"",
                              "\"guayaquil\" AND \"municipio\"",
                              "@alcaldiagye",
                              "\"Cynthia Viteri\""), n=18000, include_rts=TRUE, lang="es", retryonratelimit=TRUE)

saveRDS(guayaquil,"guayaquil.rds")


    
    
