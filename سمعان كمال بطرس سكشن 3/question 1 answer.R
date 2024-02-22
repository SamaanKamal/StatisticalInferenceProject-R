data("airquality")
x <-(airquality$Temp-32)*5/9
hist(x,main = "Maximum daily temperature at La Guardia Airport" , xlab ="Temperature in degrees Celsius")


