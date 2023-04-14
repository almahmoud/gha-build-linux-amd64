+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''alabaster.sce'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'help("repositories", package = "BiocManager")' for details.
Replacement repositories:
    CRAN: https://cloud.r-project.org
Bioconductor version 3.17 (BiocManager 1.30.20), R 4.3.0 beta (2023-04-06
  r84184)
Installing package(s) 'alabaster.sce'
trying URL 'https://bioconductor.org/packages/3.17/bioc/src/contrib/alabaster.sce_0.99.1.tar.gz'
Content type 'application/x-gzip' length 225378 bytes (220 KB)
==================================================
downloaded 220 KB

* installing *source* package ‘alabaster.sce’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘alabaster.sce’ as ‘alabaster.sce_0.99.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (alabaster.sce)

The downloaded source packages are in
	‘/tmp/RtmpgWHEyL/downloaded_packages’

real	0m23.483s
user	0m21.357s
sys	0m1.507s
