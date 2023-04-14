+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''UniProt.ws'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'help("repositories", package = "BiocManager")' for details.
Replacement repositories:
    CRAN: https://cloud.r-project.org
Bioconductor version 3.17 (BiocManager 1.30.20), R 4.3.0 beta (2023-04-06
  r84184)
Installing package(s) 'UniProt.ws'
also installing the dependencies ‘hms’, ‘httpcache’, ‘progress’, ‘rjsoncons’

trying URL 'https://cloud.r-project.org/src/contrib/hms_1.1.3.tar.gz'
Content type 'application/x-gzip' length 43379 bytes (42 KB)
==================================================
downloaded 42 KB

trying URL 'https://cloud.r-project.org/src/contrib/httpcache_1.2.0.tar.gz'
Content type 'application/x-gzip' length 27558 bytes (26 KB)
==================================================
downloaded 26 KB

trying URL 'https://cloud.r-project.org/src/contrib/progress_1.2.2.tar.gz'
Content type 'application/x-gzip' length 29506 bytes (28 KB)
==================================================
downloaded 28 KB

trying URL 'https://cloud.r-project.org/src/contrib/rjsoncons_1.0.0.tar.gz'
Content type 'application/x-gzip' length 529181 bytes (516 KB)
==================================================
downloaded 516 KB

trying URL 'https://bioconductor.org/packages/3.17/bioc/src/contrib/UniProt.ws_2.39.3.tar.gz'
Content type 'application/x-gzip' length 240894 bytes (235 KB)
==================================================
downloaded 235 KB

* installing *source* package ‘hms’ ...
** package ‘hms’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘hms’ as ‘hms_1.1.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (hms)
* installing *source* package ‘httpcache’ ...
** package ‘httpcache’ successfully unpacked and MD5 sums checked
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
packaged installation of ‘httpcache’ as ‘httpcache_1.2.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (httpcache)
* installing *source* package ‘rjsoncons’ ...
** package ‘rjsoncons’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0’
using C++11
g++ -std=gnu++11 -I"/usr/local/lib/R/include" -DNDEBUG -I../inst/include/ -I'/usr/local/lib/R/site-library/cpp11/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c cpp11.cpp -o cpp11.o
g++ -std=gnu++11 -I"/usr/local/lib/R/include" -DNDEBUG -I../inst/include/ -I'/usr/local/lib/R/site-library/cpp11/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c rjsoncons.cpp -o rjsoncons.o
g++ -std=gnu++11 -shared -L/usr/local/lib/R/lib -L/usr/local/lib -o rjsoncons.so cpp11.o rjsoncons.o -L/usr/local/lib/R/lib -lR
installing to /tmp/tmp/built/00LOCK-rjsoncons/00new/rjsoncons/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘rjsoncons’ as ‘rjsoncons_1.0.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (rjsoncons)
* installing *source* package ‘progress’ ...
** package ‘progress’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘progress’ as ‘progress_1.2.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (progress)
* installing *source* package ‘UniProt.ws’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Warning: replacing previous import ‘utils::findMatches’ by ‘S4Vectors::findMatches’ when loading ‘AnnotationDbi’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
Warning: replacing previous import ‘utils::findMatches’ by ‘S4Vectors::findMatches’ when loading ‘AnnotationDbi’
** testing if installed package can be loaded from final location
Warning: replacing previous import ‘utils::findMatches’ by ‘S4Vectors::findMatches’ when loading ‘AnnotationDbi’
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘UniProt.ws’ as ‘UniProt.ws_2.39.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (UniProt.ws)

The downloaded source packages are in
	‘/tmp/RtmpnEVYZf/downloaded_packages’

real	1m42.674s
user	1m35.534s
sys	0m5.999s
