#!/usr/local/bin/RScript
if (!require("BiocManager", quietly = TRUE))
    install.packages("BiocManager", repos = "http://cran.us.r-project.org")
if (!require("R.utils", quietly = TRUE))
    install.packages("R.utils", repos = "http://cran.us.r-project.org")

userargs <- R.utils::commandArgs(asValues = TRUE)
biocdeps <- userargs$biocdeps
uniquedeps <- userargs$uniquedeps

.exlude_packages <- function() {
    inst <- installed.packages()
    inst[inst[, "Priority"] %in% "base", "Package"]
}
exclude <- .exlude_packages()
db <- available.packages(repos = BiocManager::repositories())

softpkgs <- available.packages(repos = BiocManager::repositories()["BioCsoft"])[,1]
# annpkgs <- available.packages(repos = BiocManager::repositories()["BioCann"])[,1]
# exppkgs <- available.packages(repos = BiocManager::repositories()["BioCexp"])[,1]
# wkflpkgs <- available.packages(repos = BiocManager::repositories()["BioCworkflows"])[,1]
# bookpkgs <- available.packages(repos = BiocManager::repositories()["BioCbooks"])[,1]

biocpkgs <- unique(sort(c(softpkgs))) #, annpkgs, exppkgs, wkflpkgs)))

pkgdeps <- tools::package_dependencies(biocpkgs, db = db, recursive = 'strong', which = 'most')
pkgdeps <- lapply(pkgdeps, function(x){x[!(x %in% exclude)] } )
strongpkgdeps <- tools::package_dependencies(biocpkgs, db = db, recursive = 'strong', which = 'strong')
strongpkgdeps <- lapply(strongpkgdeps, function(x){x[!(x %in% exclude)] } )

biocpkgdeps <- c()

for (p in names(pkgdeps)) {
    biocpkgdeps[[p]] <- strongpkgdeps[[p]][strongpkgdeps[[p]] %in% biocpkgs]
}

strongpkgs <- unique(sort(c(unlist(strongpkgdeps), names(strongpkgdeps))))
allpkgs <- unique(sort(c(unlist(pkgdeps), names(pkgdeps))))
notstrong <- allpkgs[!(allpkgs %in% strongpkgs)]

uniquepkgdeps <- c()
for (p in names(pkgdeps)) {
    uniquepkgdeps[[p]] <- pkgdeps[[p]][pkgdeps[[p]] %in% notstrong]
    notstrong <- notstrong[!(notstrong %in% uniquepkgdeps[[p]])]
}

library(jsonlite)
fileConn<-file(uniquedeps)
writeLines(prettify(toJSON(uniquepkgdeps)), fileConn)
close(fileConn)
fileConn<-file(biocdeps)
writeLines(prettify(toJSON(biocpkgdeps)), fileConn)
close(fileConn)