wage = read.csv("wage.csv", header=FALSE)
sub.wage = wage[,c(1,8,9,12,13,15,16,17,19,20,22,24,26,27,29,31,32,34,36,39,40,42,44,48,49,51,55,57,58,59,60,63,66,68,69,70)]
colnames(sub.wage) = c("year", "famsize","nchild", "yngch", "relate", "sex", "age", "marst", "marrno", "race", "hispan", "bpl", "citizen", "speakeng", "educ", "schltype", "degfield", "degfield2", "empstat", "occ1990", "occ2010", "ind1990", "classwkrd", "uhrswork", "incwage","presgl", "migrate1","disabwrk", "vetdisab", "diffrem", "diffphys", "diffsens", "vetstat", "pwmetro", "pwcity", "tranwork")
#make year 1-12 for numeric purposes
sub.wage$year = sub.wage$year-2000

#remove those not in the labor force
sub1 = sub.wage[sub.wage$empstat!=3,]

#the guys with empstat = 0 seem to be problematic as well - remove them too
sub2 = sub1[sub1$empstat!=0,]


length(sub2[is.na(sub2$degfield)&sub2$educ>=10,])
#only 35 people with degfield as N/A completed 4 or more years of college 
#make this it's own category
sub2$degfield = ifelse(is.na(sub2$degfield),0,sub2$degfield)

#pwmetro already has it's own code for N/A's - change all the NA's to 0000
sub2$pwmetro = ifelse(is.na(sub2$pwmetro),0000,sub2$pwmetro)
#create a new variable that just indicates whether or not a person worked in a major metropolitan area or not
sub2$metro = ifelse(sub2$pwmetro==0000,0,1)
sum(sub2$metro)

#presgl should be numeric - but divided by 10
#although not important for our purposes, do it any way
sub2$presgl=sub2$presgl/10

#make the outcome 0 or 1 (vs 1 or 2)
sub2$empstat=ifelse(sub2$empstat==2,0,1)
#change sex to male and female just for kicks
sub2$sex = ifelse(sub2$sex==2,"Female","Male")

#reduce categories of educ
sub2$educ1 = ifelse(sub2$educ>=0&sub2$educ<=5,"NoHSDip",ifelse(sub2$educ==6,"HS",ifelse(sub2$educ>=7&sub2$educ<=9,"SomeCollege",ifelse(sub2$educ==10,"4yrCollege",">4yrCollege"))))
#reduce categories of SpeakEng
sub2$speakeng1 = ifelse(sub2$speakeng==1,"No", ifelse(sub2$speakeng==6,"YesNotWell",ifelse(sub2$speakeng>=2&sub2$speakeng<=5,"YesWell","Unkwn")))
