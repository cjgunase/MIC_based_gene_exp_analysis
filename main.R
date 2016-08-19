library(dplyr)

mic_relations <- read.csv("./tf_2168_pw_22_exp.csv,between[break=2168],cv=0.0,B=n^0.6,Results.csv")
tbl_df(mic_relations)
names(mic_relations)

mic_gt0.5 <- filter(mic_relations,MIC..strength.>0.5)
tbl_df(mic_gt0.5)
mic_gt0.5_q_75 <-subset(mic_gt0.5, MIC.p.2..nonlinearity. <= quantile(MIC.p.2..nonlinearity., 0.75))
tbl_df(mic_gt0.5_q_75)

tbl_df(mic_gt0.5_q_25)

good_linear_relations <- filter(mic_gt0.5,MIC.p.2..nonlinearity.< 0.25 & Linear.regression..p.>0.75)
good_linear_relations <- good_linear_relations[order(-good_linear_relations$Linear.regression..p.),] 


good_non_linear_relations <-filter(mic_gt0.5,MIC.p.2..nonlinearity.>0.75)
good_non_linear_relations <- good_non_linear_relations[order(-good_non_linear_relations$MIC.p.2..nonlinearity.),] 


