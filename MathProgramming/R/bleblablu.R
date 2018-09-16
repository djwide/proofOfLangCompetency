#y= log(earnings)
#i= person
#j[i]= job of person
#k[i]= state

library(lmer)
school= read.csv("school.csv")
head(school)
school= school[,-c(1,2)]
??lmer
varInt= lmer(extra-open+agree+social_(1|school)+1|class), data= school)
summary(varInt)
coef(varInt)$ranef
#look at this model (mixed, included class and school as random effects) model v model w fixed effects for school
