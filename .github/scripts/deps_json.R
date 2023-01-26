#!/usr/local/bin/RScript
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager", repos = "http://cran.us.r-project.org")
install.packages("R.utils", repos = "http://cran.us.r-project.org")
userargs <- R.utils::commandArgs(asValues = TRUE)
outfile <- userargs$outfile
which <- userargs$which
recursive <- userargs$recursive

.exlude_packages <- function() {
    inst <- installed.packages()
    inst[inst[, "Priority"] %in% "base", "Package"]
}
exclude <- .exlude_packages()
db <- available.packages(repos = BiocManager::repositories())

# Recursive dependencies
biocpkgs <- available.packages(repos = BiocManager::repositories()["BioCsoft"])[,1]
pkgdeps <- c()
while (length(biocpkgs) > 0)
{
    biocpkgs <- biocpkgs[!(biocpkgs %in% names(pkgdeps))]
    pdeps <- tools::package_dependencies(biocpkgs, db = db, recursive = recursive, which = which)
    pdeps <- lapply(pdeps, function(x){x[!(x %in% exclude)] } )
    for (p in names(pdeps)) {
        biocpkgs <- c(biocpkgs, pdeps[[p]][!(pdeps[[p]]) %in% c(names(pkgdeps), biocpkgs)])
    }
    
    ## Add this package and its reverse dependencies to the list
    pkgdeps <- c(pkgdeps, pdeps)
    ## Add dependencies to list to add to final list of packages to buil
}

# Remove dependencies that are already dependencies of other dependencies
pkgdeps <- lapply(pkgdeps, function(x) {
  elements_to_remove <- unique(unlist(pkgdeps[unlist(x)]))
  elements_to_remove <- elements_to_remove[elements_to_remove %in% x]
  return(x[!(x %in% elements_to_remove)])
})

library(jsonlite)
fileConn<-file(outfile)
writeLines(prettify(toJSON(pkgdeps)), fileConn)
close(fileConn)
