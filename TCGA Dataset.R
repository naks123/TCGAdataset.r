library(tidyverse)
library(readxl)
library(dplyr)
library(ggplot2)
library(pheatmap)
library(mailR)
data.proteomics <- read_excel("LGG-proteomics (1).xlsx")
data.s <- read_excel("LGG-sample_info (3).xlsx")

data.sam2 <- as.data.frame(data.s)
data.pro2 <- as.data.frame(data.proteomics)
View(data.pro2)

data.sam3 <- data.sam2[c(1:428),]
View(data.sam3)
data.pro3=data.pro2[,order(ncol(data.pro2):1)]
data.pro3


View(data.pro3)
list_vital_status <- as.list(data.sam3$vital_status)
colnames(data.pro3) <- list_vital_status


View(data.pro3)
a <- data.pro2["names"] 
a <- as.list(a)
alive = data.frame(row.names = )
data.pro3 <- data.frame(namess = a, data.pro3)
View(data.pro3)


data_frame_alive <- data.pro3 %>% select(starts_with("Alive"))
data_frame_alive
data_frame_dead <- data.pro3 %>% select(starts_with("Dead"))
data_frame_dead

x <- sample(data_frame_alive, size = 50, replace=T)
y <- sample(data_frame_dead, size = 50, replace=T) 
t.test(x,y)

is.na(data.pro3)
