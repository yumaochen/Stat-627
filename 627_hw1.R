
data.delim=read.delim("C:\\Users\\user\\Desktop\\Fall-15-Wisc\\gapminderDataFiveYear.txt", header=T)

data.tab0=read.table("C:\\Users\\user\\Desktop\\Fall-15-Wisc\\gapminderDataFiveYear.txt", header=T)
data.tab1=read.table("C:\\Users\\user\\Desktop\\Fall-15-Wisc\\gapminderDataFiveYear.txt", header=T, sep = "\t")
data.tab2=read.table("C:\\Users\\user\\Desktop\\Fall-15-Wisc\\gapminderDataFiveYear.txt", header=T, sep = "\t", quote = "\"")

glimpse(data.delim)
glimpse(data.tab1)
glimpse(data.tab2)


data.delim %>% glimpse()
data.tab1 %>% glimpse()
data.tab2 %>% glimpse()

countries=data.delim[!duplicated(data.delim$country),]
countries.p = ggplot(countries, aes(x=continent))
countries.p + geom_histogram()

df1952 = data.delim[data.delim$year==1952,]
contnent.p = ggplot(df1952, aes(x=continent, y=pop))
contnent.p + geom_boxplot() + coord_flip()

df2002 = data.delim[(data.delim$year==2002),]
contnent.p = ggplot(df2002, aes(x=continent, y=pop))
contnent.p + geom_boxplot() + coord_flip()

americas = data.delim[data.delim$continent=="Americas",]
americas.time.p = ggplot(americas, aes(x=year, y=pop, group=country)) 
americas.time.p + geom_line(aes(colour=country))

sy0=summary(americas[americas$year==1952,] )

summary(americas[americas$year==2002,] )


