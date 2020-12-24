#creating vector 
myvector<-c(10,20,30,40,50,60)
print(myvector)
print(class(myvector))
#creating list 
mylist<-list(c(20,3,40,5))
print(mylist)
#creating matrix
mymatrix<-c(('a','a','b','c','b','a'),nrow=2,ncol=3,byrow=TRUE)
print (mymatrix)
#creating array
myarray<-array(c('red','blue'),dim=c(3,3,2))
print (myarray)
#creating dataframes
mydataframe<-data.frame(mname=c('samsung', 'micromax','redmi'), price=c (1000,8000,5000), weight=c(42,41,50))
print(mydataframe)
#pie chart
pie(myvector,main='piechart')
#bar chart
barplot(myvector,xlab='xaxis',ylab='yaxis',main='barchart')
#histogram
hist(myvector,main='histogram')
#control structure 
a<-10
b<-5
if(a>b)
{
   print('a is greater')
}
#while loop
i<-1
while (i<10)
{
   if(i==5)
   { 
      break
    } 
print (i)
i=i+1
}
