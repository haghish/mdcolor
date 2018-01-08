


CN = colors()
for (i in 1:length(CN)) {
    hex = gplots::col2hex(CN[i])
    cat(paste0(".replace(/\\[",CN[i],
               "\\]/g, '<span style=\"color:",
               hex, "\">')"), fill=T)
}

for (i in 1:length(CN)) {
    hex = gplots::col2hex(CN[i])
    cat(paste0(".replace(/\\[-",CN[i],
               "\\]/g, '<span style=\"background-color:",
               hex, "\">')"), fill=T)
}


