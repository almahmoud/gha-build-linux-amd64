+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''RNAmodR.ML'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.posit.co/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'RNAmodR.ML'
also installing the dependencies ‘gtools’, ‘caTools’, ‘plyr’, ‘gplots’, ‘colorRamps’, ‘reshape2’, ‘ROCR’, ‘RNAmodR’, ‘ranger’

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/gtools_3.9.4.tar.gz'
Content type 'binary/octet-stream' length 352174 bytes (343 KB)
==================================================
downloaded 343 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/caTools_1.18.2.tar.gz'
Content type 'binary/octet-stream' length 245911 bytes (240 KB)
==================================================
downloaded 240 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/plyr_1.8.8.tar.gz'
Content type 'binary/octet-stream' length 819020 bytes (799 KB)
==================================================
downloaded 799 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/gplots_3.1.3.tar.gz'
Content type 'binary/octet-stream' length 594297 bytes (580 KB)
==================================================
downloaded 580 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/colorRamps_2.3.1.tar.gz'
Content type 'binary/octet-stream' length 27002 bytes (26 KB)
==================================================
downloaded 26 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/reshape2_1.4.4.tar.gz'
Content type 'binary/octet-stream' length 115912 bytes (113 KB)
==================================================
downloaded 113 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/ROCR_1.0-11.tar.gz'
Content type 'binary/octet-stream' length 449214 bytes (438 KB)
==================================================
downloaded 438 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/RNAmodR_1.12.0.tar.gz'
Content type 'application/x-gzip' length 1491736 bytes (1.4 MB)
==================================================
downloaded 1.4 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/ranger_0.14.1.tar.gz'
Content type 'binary/octet-stream' length 405477 bytes (395 KB)
==================================================
downloaded 395 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/RNAmodR.ML_1.12.0.tar.gz'
Content type 'application/x-gzip' length 1528889 bytes (1.5 MB)
==================================================
downloaded 1.5 MB

* installing *binary* package ‘gtools’ ...
* ‘gtools’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘gtools’ as ‘gtools_3.9.4_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (gtools)
* installing *binary* package ‘caTools’ ...
* ‘caTools’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘caTools’ as ‘caTools_1.18.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (caTools)
* installing *binary* package ‘plyr’ ...
* ‘plyr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘plyr’ as ‘plyr_1.8.8_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (plyr)
* installing *binary* package ‘colorRamps’ ...
* ‘colorRamps’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘colorRamps’ as ‘colorRamps_2.3.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (colorRamps)
* installing *binary* package ‘ranger’ ...
* ‘ranger’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘ranger’ as ‘ranger_0.14.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (ranger)
* installing *binary* package ‘gplots’ ...
* ‘gplots’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘gplots’ as ‘gplots_3.1.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (gplots)
* installing *binary* package ‘reshape2’ ...
* ‘reshape2’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘reshape2’ as ‘reshape2_1.4.4_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (reshape2)
* installing *binary* package ‘ROCR’ ...
* ‘ROCR’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘ROCR’ as ‘ROCR_1.0-11_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (ROCR)
* installing *source* package ‘RNAmodR’ ...
** using staged installation
** R
** data
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
packaged installation of ‘RNAmodR’ as ‘RNAmodR_1.12.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (RNAmodR)
* installing *source* package ‘RNAmodR.ML’ ...
** using staged installation
** R
** data
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
packaged installation of ‘RNAmodR.ML’ as ‘RNAmodR.ML_1.12.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (RNAmodR.ML)

The downloaded source packages are in
	‘/tmp/RtmpyForAz/downloaded_packages’
Old packages: 'fs', 'sourcetools', 'tinytex', 'utf8', 'xfun', 'codetools',
  'nlme'

real	2m1.099s
user	1m52.492s
sys	0m5.716s
