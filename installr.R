library(installr)
updateR()

ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

# usage
packages <- c('installr', 'VIM', "ggplot2", "plyr", "reshape2", "RColorBrewer", "scales", "grid", 'caret',
              'tidyverse','tidymodels','GGally','hexbin','gpairs','ellipse','ggrepel','graphics','ggExtra',
              'viridis','corrgram','corrplot','gridExtra','hrbthemes','wesanderson','PerformanceAnalytics',
              'haven','jtools','lmtest','het.test','robustbase','AER','foreign','stargazer','scales','rdd', 'mlr','plotly',
              'forecast', 'corrr', 'AICcmodavg', 'compareGroups','rjags','rstanarm', 'HSAUR2', 'geepack','DataCombine','patchwork',
              'vroom', 'skimr','fuzzyjoin','alluvial', 'ggforce','gganimate','prophet','timetk', 'geojsonio', 'fasttime', 'hms',
              'stringbus','devtools','AICcmodavg','MuMIn','lme4','nlme', 'roxygen2', 'broom.mixed', 'ISLR', 'waffle'        )
ipak(packages)