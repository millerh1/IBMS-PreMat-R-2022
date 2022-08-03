library(tidyverse)
library(ggpubr)

View(mtcars)

ggscatter(
  data = mtcars,
  x = "wt",
  y = "mpg",
  cor.coef = TRUE,
  add = "reg.line",
  title = "Relationship between weight and MPG",
  xlab = "Weight",
  ylab = "Miles per gallon (MPG)"
)

View(iris)

ggboxplot(
  data = iris,
  x = "Species",
  y = "Petal.Length",
  title = "Relationship between iris species and petal length"
) +
  stat_compare_means(
    method = "t.test",
    comparisons = list(
      c("setosa", "versicolor"),
      c("setosa", "virginica"),
      c("versicolor", "virginica")
    ),
    label = "p.signif"
  )



