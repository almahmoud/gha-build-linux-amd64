+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''SCAN.UPC'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'help("repositories", package = "BiocManager")' for details.
Replacement repositories:
    CRAN: https://cloud.r-project.org
Bioconductor version 3.17 (BiocManager 1.30.20), R 4.3.0 beta (2023-04-06
  r84184)
Installing package(s) 'SCAN.UPC'
trying URL 'https://bioconductor.org/packages/3.17/bioc/src/contrib/SCAN.UPC_2.41.0.tar.gz'
Content type 'application/x-gzip' length 568751 bytes (555 KB)
==================================================
downloaded 555 KB

* installing *source* package ‘SCAN.UPC’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Parallel computing support for 'oligo/crlmm': Disabled
     - Load 'ff'
     - Load and register a 'foreach' adaptor
        Example - Using 'multicore' for 2 cores:
             library(doMC)
             registerDoMC(2)
================================================================================
Warning message:
replacing previous import ‘utils::findMatches’ by ‘S4Vectors::findMatches’ when loading ‘AnnotationDbi’ 
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Parallel computing support for 'oligo/crlmm': Disabled
     - Load 'ff'
     - Load and register a 'foreach' adaptor
        Example - Using 'multicore' for 2 cores:
             library(doMC)
             registerDoMC(2)
================================================================================
Warning: replacing previous import ‘utils::findMatches’ by ‘S4Vectors::findMatches’ when loading ‘AnnotationDbi’
** testing if installed package can be loaded from final location
Parallel computing support for 'oligo/crlmm': Disabled
     - Load 'ff'
     - Load and register a 'foreach' adaptor
        Example - Using 'multicore' for 2 cores:
             library(doMC)
             registerDoMC(2)
================================================================================
Warning: replacing previous import ‘utils::findMatches’ by ‘S4Vectors::findMatches’ when loading ‘AnnotationDbi’
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘SCAN.UPC’ as ‘SCAN.UPC_2.41.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (SCAN.UPC)

The downloaded source packages are in
	‘/tmp/RtmpamMVAD/downloaded_packages’

real	0m28.479s
user	0m25.833s
sys	0m1.673s
* installing *source* package ‘pd.hg.u95a’ ...
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
packaged installation of ‘pd.hg.u95a’ as ‘pd.hg.u95a_3.12.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (pd.hg.u95a)
