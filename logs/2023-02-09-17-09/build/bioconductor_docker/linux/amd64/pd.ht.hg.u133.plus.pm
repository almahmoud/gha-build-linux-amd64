+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''pd.ht.hg.u133.plus.pm'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.posit.co/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'pd.ht.hg.u133.plus.pm'
trying URL 'https://bioconductor.org/packages/3.16/data/annotation/src/contrib/pd.ht.hg.u133.plus.pm_3.12.0.tar.gz'
Content type 'application/x-gzip' length 15205760 bytes (14.5 MB)
==================================================
downloaded 14.5 MB

* installing *source* package ‘pd.ht.hg.u133.plus.pm’ ...
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
packaged installation of ‘pd.ht.hg.u133.plus.pm’ as ‘pd.ht.hg.u133.plus.pm_3.12.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (pd.ht.hg.u133.plus.pm)

The downloaded source packages are in
	‘/tmp/RtmpwEBePo/downloaded_packages’
Old packages: 'fs', 'sourcetools', 'tinytex', 'utf8', 'xfun', 'codetools',
  'nlme'

real	0m53.778s
user	0m48.765s
sys	0m1.992s
