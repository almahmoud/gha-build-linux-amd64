#!/usr/local/bin/RScript
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager", repos = "http://cran.us.r-project.org")
outputfiles <- commandArgs(trailingOnly = TRUE)
outputs <- unlist(strsplit(outputfiles,' '))
alldepsfile <- outputs[[1]]
directdepsfile <- outputs[[2]]
#BiocManager::install(version = "3.16", ask = FALSE)

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
    pdeps <- tools::package_dependencies(biocpkgs, db = db, recursive ="strong", which ="most")
    pdeps <- lapply(pdeps, function(x){x[!(x %in% exclude)] } )
    for (p in names(pdeps)) {
        biocpkgs <- c(biocpkgs, pdeps[[p]][!(pdeps[[p]]) %in% c(names(pkgdeps), biocpkgs)])
    }
    
    ## Add this package and its reverse dependencies to the list
    pkgdeps <- c(pkgdeps, pdeps)
    ## Add dependencies to list to add to final list of packages to buil
}

library(jsonlite)
fileConn<-file(alldepsfile)
writeLines(prettify(toJSON(pkgdeps)), fileConn)
close(fileConn)

# Direct dependencies
biocpkgs <- available.packages(repos = BiocManager::repositories()["BioCsoft"])[,1]
directdeps <- c()
while (length(biocpkgs) > 0)
{
    biocpkgs <- biocpkgs[!(biocpkgs %in% names(directdeps))]
    pdeps <- tools::package_dependencies(biocpkgs, db = db, recursive = FALSE, which ="strong")
    pdeps <- lapply(pdeps, function(x){x[!(x %in% exclude)] } )
    for (p in names(pdeps)) {
        biocpkgs <- c(biocpkgs, pdeps[[p]][!(pdeps[[p]]) %in% c(names(directdeps), biocpkgs)])
    }
    
    ## Add this package and its reverse dependencies to the list
    directdeps <- c(directdeps, pdeps)
    ## Add dependencies to list to add to final list of packages to buil
}


# Remove direct dependencies that are already dependencies of other dependencies
directdeps <- lapply(directdeps, function(x) {
  elements_to_remove <- unique(unlist(pkgdeps[unlist(x)]))
  elements_to_remove <- elements_to_remove[elements_to_remove %in% x]
  return(x[!(x %in% elements_to_remove)])
})

library(jsonlite)
fileConn<-file(directdepsfile)
writeLines(prettify(toJSON(directdeps)), fileConn)
close(fileConn)
