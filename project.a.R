#---------------Load packages---------------
#install.packages("tidyverse")
#install.packages("ggolot2")
#install.packages("hablar")
library(ggplot2)
library(dplyr)
library(hablar)
library(magrittr)

#---------------Read in data---------------
a.df <- read.csv("project.a.data.csv")

#-------- Explore dataset --------
head(a.df)
nrow(a.df)
str(a.df)
summary(a.df)
#View(a.df)

#--------Change column names--------
colnames(a.df) <- c("Source", "Progress", "CompleteTF", "EmailDS", "EmailDSText", "MultipleAcc", "AdminPriv", "Industry", "IndustryText", "WorkType", "EmailTypeQ1", "EmailTypeQ2", "DSAccNum", "Default", "Invited", "EmailSend", "EmailSendTextQ1", "EmailSendTextQ2", "AdminQ1", "AdminQ2", "AdminQ3", "EnvSharing", "LostEnv", "WrongAcc", "Preference")

#--------Remove incompletes (keep >=91% completes)--------
#1. Remove empty rows
a.df.1 <- a.df[-1:-3, ]

#2. Remove < 91% completes
a.df.1 <- a.df[a.df$Progress == 100 | a.df$Progress == 91, ]

#--------Correct object types--------
a.df.1 <- a.df.1 %>%
  convert(fct(AdminPriv, 
              Source, 
              MultipleAcc))

#--------Creating visualizations--------

#--Box plot for genre x us.profit.percentage--

#Filter genres 


#Filter studios


#Crease base


#Define geometries


#Add themes & change legend titles


#Final visualization
