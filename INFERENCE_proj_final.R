library(datasets)
library(tree)
library(dplyr)
library(e1071)
data = sleep
print(data)
#task1 
for(i in sleep$extra)
{
  if (i>0)
  {print("more sleep")}
  
  else if(i<0)
  {print("less sleep")}
  else
    print("neutral")
}


#task2
data(sleep)
groupColumn <- as.numeric(levels(sleep$group))[sleep$group]
plot(groupColumn,main = "This is the sleep hours",ylab = "extra sleeps",cex = 3,type = "b")




#task3
boxplot(sleep,col = rainbow(6),ylab="sleep")
text(x=1,y=2,labels="groups")
text(x=2,y=3,labels="groups")
text(x=3,y=7,labels="groups")



library(datasets)
library(tree)
library(dplyr)
library(e1071)
data = sleep




#task4
data_wrangeled_4 <- sleep %>%
  #filter(Sepal.Length >= 7.0)
  filter(group==1 & extra < 1) 
data_wrangeled_4




#task5
data_wrangeled_5 <- sleep %>%
  group_by(group) %>%
  summarize(extra.mean=mean(extra),extra.sd=sqrt(var(extra)))
data_wrangeled_5




#task6
numeric_group <- as.numeric(sleep$group)
numeric_ID <- as.numeric(sleep$ID)
result<-lm(sleep$extra ~ numeric_group + numeric_ID )
summary(result)
correlation = cor(sleep$extra,numeric_group)
print(correlation)



#Bonus
#Naive Bayes classification
model <- naiveBayes(group~ ., data)
v=predict(model, as.data.frame(data))
table(v)


#Decision tree classification 

#classify Group
Grouptree<-tree(group~.,sleep)
text(Grouptree)
plot(Grouptree)
plot(Grouptree, type ="uniform")
text(Grouptree,all = TRUE)


#classify Extra
ExtraTree<-tree(extra~.,sleep)
text(ExtraTree)
plot(ExtraTree)
plot(ExtraTree, type ="uniform")
text(ExtraTree,all = TRUE)




