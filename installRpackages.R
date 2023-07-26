install.packages("shiny")
install.packages("shinyBS")
install.packages("shinythemes")
install.packages("readxl")
install.packages("tidyverse")
install.packages("mi")
install.packages("descr")
install.packages("pROC")
install.packages("readxl")
install.packages("plyr")
install.packages("tidyverse")
install.packages("assertthat")
install.packages("ggplot2")
install.packages("cowplot")
install.packages("viridis")
install.packages("ggthemes")
install.packages("car")
install.packages("ggExtra")
install.packages("scales")
install.packages("xtable")
install.packages("markdown")
install.packages("htmltools")
install.packages("rsconnect")
install.packages("rmeta")
# New stuff for https://github.com/FredHutch/KInhibition
install.packages("shiny.semantic")
install.packages("DT")
install.packages("dplyr")
install.packages("plotly")
install.packages("webshot")
install.packages("reshape2")
install.packages("htmlwidgets")
install.packages("maps")
install.packages("mapproj")
# New stuff for https://github.com/adamssv/u025_1
install.packages("methods")
install.packages("bitops")
# New stuff for genomics-repo-app
install.packages("data.table", dependencies=TRUE) 
install.packages("shinythemes") 
install.packages("httr") 
install.packages("jsonlite")
install.packages("REDCapR") 
install.packages("aws.s3")
# New stuff for https://github.com/FredHutch/hawnmtb
install.packages("DT")
install.packages("igraph")
install.packages("intergraph")
install.packages("ggnetwork")

###

pkg <- c("shinty", "shinyBS", "shinythemes", "readxl", "tidyverse", "mi", "descr", "pROC", "readxl", "plyr", "tidyverse", "assertthat", "ggplot2", "cowplot", "viridis", "ggthemes", "car", "ggExtra", "scales", "xtable", "markdown", "htmltools", "rsconnect", "rmeta", "shiny.semantic", "DT", "dplyr", "plotly", "webshot", "reshape2", "htmlwidgets", "maps", "mapproj", "methods", "bitops", "data.table", "httr", "jsonlite", "REDCapR", "aws.s3", "DT", "igraph", "intergraph", "ggnetwork")

pkgNames <- names(installed.packages()[, "Package"])

installed <- pkg %in% pkgNames

nres <- cbind(pkg, installed)

print(nres)

if (any(!installed)) {
    q("no", 1)
}


