+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''gemma.R'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.posit.co/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'gemma.R'
also installing the dependencies ‘generics’, ‘timechange’, ‘dplyr’, ‘tidyselect’, ‘bit’, ‘data.table’, ‘lubridate’, ‘SummarizedExperiment’, ‘tidyr’, ‘bit64’

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/generics_0.1.3.tar.gz'
Content type 'binary/octet-stream' length 73201 bytes (71 KB)
==================================================
downloaded 71 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/timechange_0.2.0.tar.gz'
Content type 'binary/octet-stream' length 182026 bytes (177 KB)
==================================================
downloaded 177 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/dplyr_1.1.0.tar.gz'
Content type 'binary/octet-stream' length 1441035 bytes (1.4 MB)
==================================================
downloaded 1.4 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/tidyselect_1.2.0.tar.gz'
Content type 'binary/octet-stream' length 219415 bytes (214 KB)
==================================================
downloaded 214 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/bit_4.0.5.tar.gz'
Content type 'binary/octet-stream' length 1121918 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/data.table_1.14.6.tar.gz'
Content type 'binary/octet-stream' length 2082451 bytes (2.0 MB)
==================================================
downloaded 2.0 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/lubridate_1.9.1.tar.gz'
Content type 'binary/octet-stream' length 967601 bytes (944 KB)
==================================================
downloaded 944 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/SummarizedExperiment_1.28.0.tar.gz'
Content type 'application/x-gzip' length 1526682 bytes (1.5 MB)
==================================================
downloaded 1.5 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/tidyr_1.3.0.tar.gz'
Content type 'binary/octet-stream' length 1198134 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/bit64_4.0.5.tar.gz'
Content type 'binary/octet-stream' length 574906 bytes (561 KB)
==================================================
downloaded 561 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/gemma.R_1.0.1.tar.gz'
Content type 'application/x-gzip' length 1243359 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

* installing *binary* package ‘generics’ ...
* ‘generics’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘generics’ as ‘generics_0.1.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (generics)
* installing *binary* package ‘timechange’ ...
* ‘timechange’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘timechange’ as ‘timechange_0.2.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (timechange)
* installing *binary* package ‘tidyselect’ ...
* ‘tidyselect’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘tidyselect’ as ‘tidyselect_1.2.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (tidyselect)
* installing *binary* package ‘bit’ ...
* ‘bit’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘bit’ as ‘bit_4.0.5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (bit)
* installing *binary* package ‘data.table’ ...
* ‘data.table’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘data.table’ as ‘data.table_1.14.6_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (data.table)
* installing *source* package ‘SummarizedExperiment’ ...
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
packaged installation of ‘SummarizedExperiment’ as ‘SummarizedExperiment_1.28.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (SummarizedExperiment)
* installing *binary* package ‘dplyr’ ...
* ‘dplyr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘dplyr’ as ‘dplyr_1.1.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (dplyr)
* installing *binary* package ‘lubridate’ ...
* ‘lubridate’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘lubridate’ as ‘lubridate_1.9.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (lubridate)
* installing *binary* package ‘bit64’ ...
* ‘bit64’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘bit64’ as ‘bit64_4.0.5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (bit64)
* installing *binary* package ‘tidyr’ ...
* ‘tidyr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘tidyr’ as ‘tidyr_1.3.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (tidyr)
* installing *source* package ‘gemma.R’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘gemma.R’ as ‘gemma.R_1.0.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (gemma.R)

The downloaded source packages are in
	‘/tmp/Rtmp2u9FqG/downloaded_packages’
Old packages: 'fs', 'sourcetools', 'tinytex', 'utf8', 'xfun', 'codetools',
  'nlme'

real	0m35.335s
user	0m30.158s
sys	0m2.567s
