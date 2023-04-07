library("ggGenshin")
library("ggplot2")
library("reshape2")
library("dplyr")

dat1 = aggregate(iris[, 1:4], by = list(iris$Species), mean) %>%
	melt() %>%
	rename(species = Group.1)
p1 = ggplot(dat1) +
	geom_col(aes(x = variable, y = value, fill = species), position = "dodge") +
	theme_test()

dat2 = iris[, c(5, 1, 2, 3)]
p2 = ggplot(dat2) +
	geom_point(aes(x = Sepal.Length, y = Sepal.Width, color = Petal.Length), size = 3) +
	theme_test()

if(dir.exists("out") == FALSE){
	dir.create("out")
}

ggsave("out/albedo.png", p1 + scale_fill_albedo(), width = 6, height = 3)
ggsave("out/yoimiya.png", p2 + scale_color_yoimiya(F), width = 6, height = 3)
