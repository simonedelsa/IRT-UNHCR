source("varSelection.R")
load("dati_UNHCR.RData")

# food section
z <- which(rt$section %in% 4:10) #90 items
hh <- household[, z]

x <- varSelection(hh) #49 items
varfin <- (x$final_sel == "keep")
namevarfin <- x$name[varfin]

datafin <- subset(hh, select=namevarfin) #31 items
