+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''R.matlab'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.posit.co/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'R.matlab'
also installing the dependencies ‘R.methodsS3’, ‘R.oo’, ‘R.utils’

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/R.methodsS3_1.8.2.tar.gz'
Content type 'binary/octet-stream' length 80411 bytes (78 KB)
==================================================
downloaded 78 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/R.oo_1.25.0.tar.gz'
Content type 'binary/octet-stream' length 954776 bytes (932 KB)
==================================================
downloaded 932 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/R.utils_2.12.2.tar.gz'
Content type 'binary/octet-stream' length 1394432 bytes (1.3 MB)
==================================================
downloaded 1.3 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/R.matlab_3.7.0.tar.gz'
Content type 'binary/octet-stream' length 272395 bytes (266 KB)
==================================================
downloaded 266 KB

* installing *binary* package ‘R.methodsS3’ ...
* ‘R.methodsS3’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘R.methodsS3’ as ‘R.methodsS3_1.8.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (R.methodsS3)
* installing *binary* package ‘R.oo’ ...
* ‘R.oo’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘R.oo’ as ‘R.oo_1.25.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (R.oo)
* installing *binary* package ‘R.utils’ ...
* ‘R.utils’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘R.utils’ as ‘R.utils_2.12.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (R.utils)
* installing *binary* package ‘R.matlab’ ...
* ‘R.matlab’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘R.matlab’ as ‘R.matlab_3.7.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (R.matlab)

The downloaded source packages are in
	‘/tmp/RtmpYBCVqI/downloaded_packages’
Old packages: 'fansi', 'fontawesome', 'fs', 'knitr', 'Rcpp', 'sass', 'vctrs',
  'yaml', 'class', 'MASS', 'spatial'

real	0m8.373s
user	0m5.130s
sys	0m0.558s
