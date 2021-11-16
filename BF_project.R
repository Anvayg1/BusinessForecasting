library(fpp2)
library(fpp)
bf_pro <- read.csv("C:\\Users\\anvay\\Desktop\\BF\\Pro_Data.csv")
View(bf_pro)
Acf(bf_pro)
class(bf_pro)
bf_pro[4]
bf_pro_ts <- ts(bf_pro[4],start=c(2020,2),frequency = 365)
plot(bf_pro_ts)
Acf(bf_pro_ts)
mean_fcst=meanf(bf_pro_ts,12)
plot(mean_fcst)
naive_fcst=naive(bf_pro_ts,12)
plot(naive_fcst)
rwf_fcst=rwf(bf_pro_ts,12)
plot(rwf_fcst)

MA6_fcst=ma(bf_pro_ts,order=6)
MA12_fcst=ma(bf_pro_ts, order=12)
MA24_fcst=ma(bf_pro_ts,order=24)
plot(bf_pro_ts)
lines(MA6_fcst,col='Red')
lines(MA12_fcst,col='yellow')
lines(MA24_fcst,col='green')

snaive_fcst <- snaive(bf_pro_ts,12)
plot(snaive_fcst)

ets_fcst <- ets(bf_pro_ts)
plot(ets_fcst)
summary(ets_fcst)


hw_fcst_lvl=HoltWinters(bf_pro_ts, beta=FALSE,gamma=FALSE)
hw_fcst_lvl
plot(hw_fcst_lvl)

hw_fcst_trend=HoltWinters(bf_pro_ts,gamma=FALSE)
hw_fcst_trend
plot(hw_fcst_trend)


