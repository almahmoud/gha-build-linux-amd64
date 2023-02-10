+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''pd.cangene.1.0.st'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.posit.co/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'pd.cangene.1.0.st'
trying URL 'https://bioconductor.org/packages/3.16/data/annotation/src/contrib/pd.cangene.1.0.st_3.12.0.tar.gz'
Content type 'application/x-gzip' length 36916277 bytes (35.2 MB)
==================================================
downloaded 35.2 MB

* installing *source* package ‘pd.cangene.1.0.st’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘pd.cangene.1.0.st’ as ‘pd.cangene.1.0.st_3.12.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (pd.cangene.1.0.st)

The downloaded source packages are in
	‘/tmp/Rtmp82q2bE/downloaded_packages’
Old packages: 'fs', 'sourcetools', 'tinytex', 'utf8', 'xfun', 'codetools',
  'nlme'

real	0m59.627s
user	0m56.573s
sys	0m1.389s
