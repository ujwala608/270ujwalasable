
if(!require(psych)){install.packages("psych")}
if(!require(PerformanceAnalytics)){install.packages("PerformanceAnalytics")}
if(!require(ggplot2)){install.packages("ggplot2")}
if(!require(rcompanion)){install.packages("rcompanion")}


Input = ("
Instructor       Grade   Weight  Calories Sodium  Score
'Brendon Small'     6      43     2069    1287      77
'Brendon Small'     6      41     1990    1164      76
'Brendon Small'     6      40     1975    1177      76
'Brendon Small'     6      44     2116    1262      84
'Brendon Small'     6      45     2161    1271      86
'Brendon Small'     6      44     2091    1222      87
'Brendon Small'     6      48     2236    1377      90
'Brendon Small'     6      47     2198    1288      78
'Brendon Small'     6      46     2190    1284      89
'Jason Penopolis'   7      45     2134    1262      76
'Jason Penopolis'   7      45     2128    1281      80
'Jason Penopolis'   7      46     2190    1305      84
'Jason Penopolis'   7      43     2070    1199      68
'Jason Penopolis'   7      48     2266    1368      85
'Jason Penopolis'   7      47     2216    1340      76
'Jason Penopolis'   7      47     2203    1273      69
'Jason Penopolis'   7      43     2040    1277      86
'Jason Penopolis'   7      48     2248    1329      81
'Melissa Robins'    8      48     2265    1361      67
'Melissa Robins'    8      46     2184    1268      68
'Melissa Robins'    8      53     2441    1380      66
'Melissa Robins'    8      48     2234    1386      65
'Melissa Robins'    8      52     2403    1408      70
'Melissa Robins'    8      53     2438    1380      83
'Melissa Robins'    8      52     2360    1378      74
'Melissa Robins'    8      51     2344    1413      65
'Melissa Robins'    8      51     2351    1400      68
'Paula Small'       9      52     2390    1412      78
'Paula Small'       9      54     2470    1422      62
'Paula Small'       9      49     2280    1382      61
'Paula Small'       9      50     2308    1410      72
'Paula Small'       9      55     2505    1410      80
'Paula Small'       9      52     2409    1382      60
'Paula Small'       9      53     2431    1422      70
'Paula Small'       9      56     2523    1388      79
'Paula Small'       9      50     2315    1404      71
'Coach McGuirk'    10      52     2406    1420      68
'Coach McGuirk'    10      58     2699    1405      65
'Coach McGuirk'    10      57     2571    1400      64
'Coach McGuirk'    10      52     2394    1420      69
'Coach McGuirk'    10      55     2518    1379      70
'Coach McGuirk'    10      52     2379    1393      61
'Coach McGuirk'    10      59     2636    1417      70
'Coach McGuirk'    10      54     2465    1414      59
'Coach McGuirk'    10      54     2479    1383      61
")

Data = read.table(textConnection(Input),header=TRUE)


###  Order factors by the order in data frame
###  Otherwise, R will alphabetize them

Data$Instructor = factor(Data$Instructor,
                         levels=unique(Data$Instructor))


###  Check the data frame

library(psych)

headTail(Data)

str(Data)

summary(Data)


### Remove unnecessary objects

rm(Input)
 

###multipal correlation 
pairs(data=Data,
    ~ Grade + Weight + Calories + Sodium + Score)
Data.num = Data[c("Grade", "Weight", "Calories", "Sodium", "Score")]


library(psych)

corr.test(Data.num,
          use    = "pairwise",
          method = "pearson",
          adjust = "none")


Correlation matrix

         Grade Weight Calories Sodium Score
Grade     1.00   0.85     0.85   0.79 -0.70
Weight    0.85   1.00     0.99   0.87 -0.48
Calories  0.85   0.99     1.00   0.85 -0.48
Sodium    0.79   0.87     0.85   1.00 -0.45
Score    -0.70  -0.48    -0.48  -0.45  1.00

Sample Size
[1] 45
Data.num = Data[c("Grade", "Weight", "Calories", "Sodium", "Score")]


library(PerformanceAnalytics)

chart.Correlation(Data.num,
                   method="pearson",
                   histogram=TRUE,
                   pch=16)


