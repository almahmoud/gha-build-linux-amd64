#!/usr/local/bin/RScript
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager", repos = "http://cran.us.r-project.org")
if (!require("R.utils", quietly = TRUE))
    install.packages("R.utils", repos = "http://cran.us.r-project.org")

userargs <- R.utils::commandArgs(asValues = TRUE)
outfile <- userargs$outfile
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
pkgdeps <- c()
while (length(biocpkgs) > 0)
{
    pdeps <- tools::package_dependencies(biocpkgs, db = db, recursive = recursive, which = which)
    pdeps <- lapply(pdeps, function(x){x[!(x %in% exclude)] } )
    for (p in names(pdeps)) {
        biocpkgs <- c(biocpkgs, pdeps[[p]][!(pdeps[[p]]) %in% c(names(pkgdeps), biocpkgs)])
    }
    pkgdeps <- c(pkgdeps, pdeps)
    biocpkgs <- biocpkgs[!(biocpkgs %in% names(pkgdeps))]
}


for (each in names(pkgdeps))
{
    for (el in pkgdeps[[each]])
    {
        # Remove circular dependencies
        pkgdeps[[el]] <- pkgdeps[[el]][pkgdeps[[el]] != each]
    }
}


library(jsonlite)
fileConn<-file(outfile)
writeLines(prettify(toJSON(pkgdeps)), fileConn)
close(fileConn)
