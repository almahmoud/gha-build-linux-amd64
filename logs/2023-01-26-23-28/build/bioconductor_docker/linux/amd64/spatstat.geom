+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''spatstat.geom'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.posit.co/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'spatstat.geom'
also installing the dependencies ‘spatstat.data’, ‘spatstat.utils’, ‘deldir’, ‘polyclip’

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/spatstat.data_3.0-0.tar.gz'
Content type 'binary/octet-stream' length 4096162 bytes (3.9 MB)
==================================================
downloaded 3.9 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/spatstat.utils_3.0-1.tar.gz'
Content type 'binary/octet-stream' length 390313 bytes (381 KB)
==================================================
downloaded 381 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/deldir_1.0-6.tar.gz'
Content type 'binary/octet-stream' length 306171 bytes (298 KB)
==================================================
downloaded 298 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/polyclip_1.10-4.tar.gz'
Content type 'binary/octet-stream' length 503874 bytes (492 KB)
==================================================
downloaded 492 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/spatstat.geom_3.0-5.tar.gz'
Content type 'binary/octet-stream' length 3879943 bytes (3.7 MB)
==================================================
downloaded 3.7 MB

* installing *binary* package ‘spatstat.utils’ ...
* ‘spatstat.utils’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘spatstat.utils’ as ‘spatstat.utils_3.0-1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (spatstat.utils)
* installing *binary* package ‘deldir’ ...
* ‘deldir’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘deldir’ as ‘deldir_1.0-6_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (deldir)
* installing *binary* package ‘polyclip’ ...
* ‘polyclip’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘polyclip’ as ‘polyclip_1.10-4_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (polyclip)
* installing *binary* package ‘spatstat.data’ ...
* ‘spatstat.data’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘spatstat.data’ as ‘spatstat.data_3.0-0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (spatstat.data)
* installing *binary* package ‘spatstat.geom’ ...
* ‘spatstat.geom’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘spatstat.geom’ as ‘spatstat.geom_3.0-5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (spatstat.geom)

The downloaded source packages are in
	‘/tmp/RtmpE2KJNe/downloaded_packages’
Old packages: 'fansi', 'fontawesome', 'fs', 'knitr', 'Rcpp', 'sass', 'vctrs',
  'yaml', 'class', 'MASS', 'spatial'

real	0m17.653s
user	0m7.483s
sys	0m0.929s
