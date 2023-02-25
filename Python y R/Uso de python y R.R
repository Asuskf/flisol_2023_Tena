install.packages("reticulate")
library(reticulate)
py_install("pandas")

py_run_string("import numpy as np")
py_run_string("np2 = np.array(range(4))")
py$np2

df<-data.frame(
  categorias=c("setosa","versicolor","virginica"),
  porcentaje=c(25,60,15))
df
