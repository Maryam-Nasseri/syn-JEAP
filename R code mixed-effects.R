R code mixed-effects



library(lme4)  #for mixed model
library(afex)  #for p-values
library(MuMIn)  #for R squared


#models  with one intercept only for by-student variation

modelA<- lmer(C.T~ groups*genre + (1|student), data=mydata, REML=FALSE)
modelB<- lmer(C.T~groups + genre + (1|student), data=mydata, REML=FALSE)
modelC<- lmer(C.T~ genre + (1|student), data=mydata, REML=FALSE)
modelD<- lmer(C.T~ groups + (1|student), data=mydata, REML=FALSE)

r.squaredGLMM(modelA)
r.squaredGLMM(modelB)
r.squaredGLMM(modelC)
r.squaredGLMM(modelD)

summary(modelA)
summary(modelB)
summary(modelC)
summary(modelD)
