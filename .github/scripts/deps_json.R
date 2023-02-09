#!/usr/local/bin/RScript
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager", repos = "http://cran.us.r-project.org")
if (!require("R.utils", quietly = TRUE))
    install.packages("R.utils", repos = "http://cran.us.r-project.org")

userargs <- R.utils::commandArgs(asValues = TRUE)
biocdeps <- userargs$biocdeps
alldeps <- userargs$alldeps
which <- userargs$which
recursive <- userargs$recursive
if (recursive == 'FALSE') { recursive <- FALSE }

.exlude_packages <- function() {
    inst <- installed.packages()
    inst[inst[, "Priority"] %in% "base", "Package"]
}
exclude <- .exlude_packages()
db <- available.packages(repos = BiocManager::repositories())

biocpkgs <- available.packages(repos = BiocManager::repositories()["BioCsoft"])[,1]
pkglist <- biocpkgs
pkgdeps <- c()
pdeps <- tools::package_dependencies(pkglist, db = db, recursive = recursive, which = which)
pdeps <- lapply(pdeps, function(x){x[!(x %in% exclude)] } )
for (p in names(pdeps)) {
    pkglist <- c(pkglist, pdeps[[p]][!(pdeps[[p]]) %in% c(names(pkgdeps), pkglist)])
}
pkgdeps <- c(pkgdeps, pdeps)

biocpkgdeps <- c()

for (p in names(pkgdeps)) {
    biocpkgdeps[[p]] <- pkgdeps[[p]][pkgdeps[[p]] %in% biocpkgs]
}

library(jsonlite)
fileConn<-file(alldeps)
writeLines(prettify(toJSON(pkgdeps)), fileConn)
close(fileConn)
fileConn<-file(biocdeps)
writeLines(prettify(toJSON(biocpkgdeps)), fileConn)
close(fileConn)