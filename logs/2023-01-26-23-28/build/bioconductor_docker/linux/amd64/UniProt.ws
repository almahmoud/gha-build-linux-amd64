+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''UniProt.ws'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.posit.co/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'UniProt.ws'
also installing the dependencies ‘bitops’, ‘zlibbioc’, ‘RCurl’, ‘GenomeInfoDbData’, ‘XVector’, ‘GenomeInfoDb’, ‘bit’, ‘png’, ‘Biostrings’, ‘assertthat’, ‘tidyselect’, ‘generics’, ‘bit64’, ‘blob’, ‘DBI’, ‘plogr’, ‘Biobase’, ‘IRanges’, ‘S4Vectors’, ‘KEGGREST’, ‘dbplyr’, ‘dplyr’, ‘filelock’, ‘hms’, ‘RSQLite’, ‘BiocGenerics’, ‘AnnotationDbi’, ‘BiocFileCache’, ‘BiocBaseUtils’, ‘rjsoncons’, ‘httpcache’, ‘progress’

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/bitops_1.0-7.tar.gz'
Content type 'binary/octet-stream' length 32391 bytes (31 KB)
==================================================
downloaded 31 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/zlibbioc_1.44.0.tar.gz'
Content type 'application/x-gzip' length 214256 bytes (209 KB)
==================================================
downloaded 209 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/RCurl_1.98-1.9.tar.gz'
Content type 'binary/octet-stream' length 1119862 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://bioconductor.org/packages/3.16/data/annotation/src/contrib/GenomeInfoDbData_1.2.9.tar.gz'
Content type 'application/x-gzip' length 11725198 bytes (11.2 MB)
==================================================
downloaded 11.2 MB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/XVector_0.38.0.tar.gz'
Content type 'application/x-gzip' length 67821 bytes (66 KB)
==================================================
downloaded 66 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/GenomeInfoDb_1.34.7.tar.gz'
Content type 'application/x-gzip' length 3472565 bytes (3.3 MB)
==================================================
downloaded 3.3 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/bit_4.0.5.tar.gz'
Content type 'binary/octet-stream' length 1121918 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/png_0.1-8.tar.gz'
Content type 'binary/octet-stream' length 39953 bytes (39 KB)
==================================================
downloaded 39 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/Biostrings_2.66.0.tar.gz'
Content type 'application/x-gzip' length 12426149 bytes (11.9 MB)
==================================================
downloaded 11.9 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/assertthat_0.2.1.tar.gz'
Content type 'binary/octet-stream' length 52507 bytes (51 KB)
==================================================
downloaded 51 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/tidyselect_1.2.0.tar.gz'
Content type 'binary/octet-stream' length 219415 bytes (214 KB)
==================================================
downloaded 214 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/generics_0.1.3.tar.gz'
Content type 'binary/octet-stream' length 73201 bytes (71 KB)
==================================================
downloaded 71 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/bit64_4.0.5.tar.gz'
Content type 'binary/octet-stream' length 574906 bytes (561 KB)
==================================================
downloaded 561 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/blob_1.2.3.tar.gz'
Content type 'binary/octet-stream' length 45568 bytes (44 KB)
==================================================
downloaded 44 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/DBI_1.1.3.tar.gz'
Content type 'binary/octet-stream' length 748403 bytes (730 KB)
==================================================
downloaded 730 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/plogr_0.2.0.tar.gz'
Content type 'binary/octet-stream' length 12785 bytes (12 KB)
==================================================
downloaded 12 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/Biobase_2.58.0.tar.gz'
Content type 'application/x-gzip' length 1792896 bytes (1.7 MB)
==================================================
downloaded 1.7 MB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/IRanges_2.32.0.tar.gz'
Content type 'application/x-gzip' length 456112 bytes (445 KB)
==================================================
downloaded 445 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/S4Vectors_0.36.1.tar.gz'
Content type 'application/x-gzip' length 623234 bytes (608 KB)
==================================================
downloaded 608 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/KEGGREST_1.38.0.tar.gz'
Content type 'application/x-gzip' length 25823 bytes (25 KB)
==================================================
downloaded 25 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/dbplyr_2.3.0.tar.gz'
Content type 'binary/octet-stream' length 1063470 bytes (1.0 MB)
==================================================
downloaded 1.0 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/dplyr_1.0.10.tar.gz'
Content type 'binary/octet-stream' length 1307837 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/filelock_1.0.2.tar.gz'
Content type 'binary/octet-stream' length 30533 bytes (29 KB)
==================================================
downloaded 29 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/hms_1.1.2.tar.gz'
Content type 'binary/octet-stream' length 96500 bytes (94 KB)
==================================================
downloaded 94 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/RSQLite_2.2.20.tar.gz'
Content type 'binary/octet-stream' length 1258523 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/BiocGenerics_0.44.0.tar.gz'
Content type 'application/x-gzip' length 47711 bytes (46 KB)
==================================================
downloaded 46 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/AnnotationDbi_1.60.0.tar.gz'
Content type 'application/x-gzip' length 4328584 bytes (4.1 MB)
==================================================
downloaded 4.1 MB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/BiocFileCache_2.6.0.tar.gz'
Content type 'application/x-gzip' length 299064 bytes (292 KB)
==================================================
downloaded 292 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/BiocBaseUtils_1.0.0.tar.gz'
Content type 'application/x-gzip' length 227829 bytes (222 KB)
==================================================
downloaded 222 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/rjsoncons_1.0.0.tar.gz'
Content type 'binary/octet-stream' length 6536666 bytes (6.2 MB)
==================================================
downloaded 6.2 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/httpcache_1.2.0.tar.gz'
Content type 'binary/octet-stream' length 60841 bytes (59 KB)
==================================================
downloaded 59 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/progress_1.2.2.tar.gz'
Content type 'binary/octet-stream' length 83456 bytes (81 KB)
==================================================
downloaded 81 KB

trying URL 'https://bioconductor.org/packages/3.16/bioc/src/contrib/UniProt.ws_2.38.1.tar.gz'
Content type 'application/x-gzip' length 145334 bytes (141 KB)
==================================================
downloaded 141 KB

* installing *binary* package ‘bitops’ ...
* ‘bitops’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘bitops’ as ‘bitops_1.0-7_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (bitops)
* installing *source* package ‘zlibbioc’ ...
** using staged installation
configure: creating ./config.status
config.status: creating src/Makevars
** libs
mkdir -p "/tmp/built/00LOCK-zlibbioc/00new/zlibbioc/include"
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c R_init_zlibbioc.c -o R_init_zlibbioc.o
gcc -shared -L/usr/local/lib/R/lib -L/usr/local/lib -o zlibbioc.so R_init_zlibbioc.o -L/usr/local/lib/R/lib -lR
installing to /tmp/built/00LOCK-zlibbioc/00new/zlibbioc/libs
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
packaged installation of ‘zlibbioc’ as ‘zlibbioc_1.44.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (zlibbioc)
* installing *source* package ‘GenomeInfoDbData’ ...
** using staged installation
** data
** inst
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘GenomeInfoDbData’ as ‘GenomeInfoDbData_1.2.9_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (GenomeInfoDbData)
* installing *binary* package ‘bit’ ...
* ‘bit’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘bit’ as ‘bit_4.0.5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (bit)
* installing *binary* package ‘png’ ...
* ‘png’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘png’ as ‘png_0.1-8_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (png)
* installing *binary* package ‘assertthat’ ...
* ‘assertthat’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘assertthat’ as ‘assertthat_0.2.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (assertthat)
* installing *binary* package ‘tidyselect’ ...
* ‘tidyselect’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘tidyselect’ as ‘tidyselect_1.2.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (tidyselect)
* installing *binary* package ‘generics’ ...
* ‘generics’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘generics’ as ‘generics_0.1.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (generics)
* installing *binary* package ‘blob’ ...
* ‘blob’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘blob’ as ‘blob_1.2.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (blob)
* installing *binary* package ‘DBI’ ...
* ‘DBI’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘DBI’ as ‘DBI_1.1.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (DBI)
* installing *binary* package ‘plogr’ ...
* ‘plogr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘plogr’ as ‘plogr_0.2.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (plogr)
* installing *binary* package ‘filelock’ ...
* ‘filelock’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘filelock’ as ‘filelock_1.0.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (filelock)
* installing *binary* package ‘hms’ ...
* ‘hms’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘hms’ as ‘hms_1.1.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (hms)
* installing *source* package ‘BiocGenerics’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Creating a new generic function for ‘aperm’ in package ‘BiocGenerics’
Creating a new generic function for ‘append’ in package ‘BiocGenerics’
Creating a new generic function for ‘as.data.frame’ in package ‘BiocGenerics’
Creating a new generic function for ‘cbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘rbind’ in package ‘BiocGenerics’
Creating a new generic function for ‘do.call’ in package ‘BiocGenerics’
Creating a new generic function for ‘duplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘anyDuplicated’ in package ‘BiocGenerics’
Creating a new generic function for ‘eval’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmax.int’ in package ‘BiocGenerics’
Creating a new generic function for ‘pmin.int’ in package ‘BiocGenerics’
Creating a new generic function for ‘Reduce’ in package ‘BiocGenerics’
Creating a new generic function for ‘Filter’ in package ‘BiocGenerics’
Creating a new generic function for ‘Find’ in package ‘BiocGenerics’
Creating a new generic function for ‘Map’ in package ‘BiocGenerics’
Creating a new generic function for ‘Position’ in package ‘BiocGenerics’
Creating a new generic function for ‘get’ in package ‘BiocGenerics’
Creating a new generic function for ‘mget’ in package ‘BiocGenerics’
Creating a new generic function for ‘grep’ in package ‘BiocGenerics’
Creating a new generic function for ‘grepl’ in package ‘BiocGenerics’
Creating a new generic function for ‘is.unsorted’ in package ‘BiocGenerics’
Creating a new generic function for ‘lapply’ in package ‘BiocGenerics’
Creating a new generic function for ‘sapply’ in package ‘BiocGenerics’
Creating a new generic function for ‘mapply’ in package ‘BiocGenerics’
Creating a new generic function for ‘match’ in package ‘BiocGenerics’
Creating a new generic function for ‘order’ in package ‘BiocGenerics’
Creating a new generic function for ‘paste’ in package ‘BiocGenerics’
Creating a new generic function for ‘rank’ in package ‘BiocGenerics’
Creating a new generic function for ‘rownames’ in package ‘BiocGenerics’
Creating a new generic function for ‘colnames’ in package ‘BiocGenerics’
Creating a new generic function for ‘union’ in package ‘BiocGenerics’
Creating a new generic function for ‘intersect’ in package ‘BiocGenerics’
Creating a new generic function for ‘setdiff’ in package ‘BiocGenerics’
Creating a new generic function for ‘sort’ in package ‘BiocGenerics’
Creating a new generic function for ‘table’ in package ‘BiocGenerics’
Creating a new generic function for ‘tapply’ in package ‘BiocGenerics’
Creating a new generic function for ‘unique’ in package ‘BiocGenerics’
Creating a new generic function for ‘unsplit’ in package ‘BiocGenerics’
Creating a new generic function for ‘var’ in package ‘BiocGenerics’
Creating a new generic function for ‘sd’ in package ‘BiocGenerics’
Creating a new generic function for ‘which.min’ in package ‘BiocGenerics’
Creating a new generic function for ‘which.max’ in package ‘BiocGenerics’
Creating a new generic function for ‘IQR’ in package ‘BiocGenerics’
Creating a new generic function for ‘mad’ in package ‘BiocGenerics’
Creating a new generic function for ‘xtabs’ in package ‘BiocGenerics’
Creating a new generic function for ‘basename’ in package ‘BiocGenerics’
Creating a new generic function for ‘dirname’ in package ‘BiocGenerics’
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘BiocGenerics’ as ‘BiocGenerics_0.44.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (BiocGenerics)
* installing *source* package ‘BiocBaseUtils’ ...
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
packaged installation of ‘BiocBaseUtils’ as ‘BiocBaseUtils_1.0.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (BiocBaseUtils)
* installing *binary* package ‘rjsoncons’ ...
* ‘rjsoncons’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘rjsoncons’ as ‘rjsoncons_1.0.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (rjsoncons)
* installing *binary* package ‘httpcache’ ...
* ‘httpcache’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘httpcache’ as ‘httpcache_1.2.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (httpcache)
* installing *binary* package ‘RCurl’ ...
* ‘RCurl’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘RCurl’ as ‘RCurl_1.98-1.9_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (RCurl)
* installing *binary* package ‘bit64’ ...
* ‘bit64’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘bit64’ as ‘bit64_4.0.5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (bit64)
* installing *source* package ‘Biobase’ ...
** using staged installation
** libs
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Rinit.c -o Rinit.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c anyMissing.c -o anyMissing.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c envir.c -o envir.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c matchpt.c -o matchpt.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c rowMedians.c -o rowMedians.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c sublist_extract.c -o sublist_extract.o
gcc -shared -L/usr/local/lib/R/lib -L/usr/local/lib -o Biobase.so Rinit.o anyMissing.o envir.o matchpt.o rowMedians.o sublist_extract.o -L/usr/local/lib/R/lib -lR
installing to /tmp/built/00LOCK-Biobase/00new/Biobase/libs
** R
** data
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
packaged installation of ‘Biobase’ as ‘Biobase_2.58.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (Biobase)
* installing *source* package ‘S4Vectors’ ...
** using staged installation
** libs
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c AEbufs.c -o AEbufs.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c DataFrame_class.c -o DataFrame_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Hits_class.c -o Hits_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c LLint_class.c -o LLint_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c List_class.c -o List_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c R_init_S4Vectors.c -o R_init_S4Vectors.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Rle_class.c -o Rle_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Rle_utils.c -o Rle_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c SEXP_utils.c -o SEXP_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c SimpleList_class.c -o SimpleList_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c anyMissing.c -o anyMissing.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c character_utils.c -o character_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c eval_utils.c -o eval_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c hash_utils.c -o hash_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c integer_utils.c -o integer_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c logical_utils.c -o logical_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c map_ranges_to_runs.c -o map_ranges_to_runs.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c raw_utils.c -o raw_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c safe_arithm.c -o safe_arithm.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c sort_utils.c -o sort_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c subsetting_utils.c -o subsetting_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG   -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c vector_utils.c -o vector_utils.o
gcc -shared -L/usr/local/lib/R/lib -L/usr/local/lib -o S4Vectors.so AEbufs.o DataFrame_class.o Hits_class.o LLint_class.o List_class.o R_init_S4Vectors.o Rle_class.o Rle_utils.o SEXP_utils.o SimpleList_class.o anyMissing.o character_utils.o eval_utils.o hash_utils.o integer_utils.o logical_utils.o map_ranges_to_runs.o raw_utils.o safe_arithm.o sort_utils.o subsetting_utils.o vector_utils.o -L/usr/local/lib/R/lib -lR
installing to /tmp/built/00LOCK-S4Vectors/00new/S4Vectors/libs
** R
** inst
** byte-compile and prepare package for lazy loading
in method for ‘normalizeSingleBracketReplacementValue’ with signature ‘"List"’: no definition for class “List”
Creating a new generic function for ‘unname’ in package ‘S4Vectors’
Creating a new generic function for ‘expand.grid’ in package ‘S4Vectors’
Creating a new generic function for ‘findMatches’ in package ‘S4Vectors’
Creating a generic function for ‘setequal’ from package ‘base’ in package ‘S4Vectors’
in method for ‘coerce’ with signature ‘"Hits","DFrame"’: no definition for class “DFrame”
Creating a generic function for ‘as.factor’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘tabulate’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘cov’ from package ‘stats’ in package ‘S4Vectors’
Creating a generic function for ‘cor’ from package ‘stats’ in package ‘S4Vectors’
Creating a generic function for ‘smoothEnds’ from package ‘stats’ in package ‘S4Vectors’
Creating a generic function for ‘runmed’ from package ‘stats’ in package ‘S4Vectors’
Creating a generic function for ‘nchar’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘substr’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘substring’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘chartr’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘tolower’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘toupper’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘sub’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘gsub’ from package ‘base’ in package ‘S4Vectors’
Creating a generic function for ‘nlevels’ from package ‘base’ in package ‘S4Vectors’
in method for ‘coerce’ with signature ‘"data.table","DFrame"’: no definition for class “data.table”
Creating a generic function for ‘complete.cases’ from package ‘stats’ in package ‘S4Vectors’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘S4Vectors’ as ‘S4Vectors_0.36.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (S4Vectors)
* installing *binary* package ‘dplyr’ ...
* ‘dplyr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘dplyr’ as ‘dplyr_1.0.10_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (dplyr)
* installing *binary* package ‘progress’ ...
* ‘progress’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘progress’ as ‘progress_1.2.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (progress)
* installing *source* package ‘IRanges’ ...
** using staged installation
** libs
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c CompressedAtomicList_utils.c -o CompressedAtomicList_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c CompressedIRangesList_class.c -o CompressedIRangesList_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c CompressedList_class.c -o CompressedList_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Grouping_class.c -o Grouping_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c IPosRanges_comparison.c -o IPosRanges_comparison.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c IRanges_class.c -o IRanges_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c IRanges_constructor.c -o IRanges_constructor.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c NCList.c -o NCList.o
NCList.c: In function ‘C_print_NCListAsINTSXP’:
NCList.c:674:37: warning: ‘%d’ directive writing between 1 and 11 bytes into a region of size 8 [-Wformat-overflow=]
  674 |                 sprintf(format, "%c0%d%c", '%', max_digits, 'd');
      |                                     ^~
NCList.c:674:33: note: directive argument in the range [-2147483647, 2147483647]
  674 |                 sprintf(format, "%c0%d%c", '%', max_digits, 'd');
      |                                 ^~~~~~~~~
In file included from /usr/include/stdio.h:894,
                 from /usr/local/lib/R/include/Rinternals.h:39,
                 from /usr/local/lib/R/include/Rdefines.h:41,
                 from /tmp/built/S4Vectors/include/S4Vectors_defines.h:18,
                 from ../inst/include/IRanges_defines.h:18,
                 from IRanges.h:1,
                 from NCList.c:5:
/usr/include/x86_64-linux-gnu/bits/stdio2.h:38:10: note: ‘__builtin___sprintf_chk’ output between 5 and 15 bytes into a destination of size 10
   38 |   return __builtin___sprintf_chk (__s, __USE_FORTIFY_LEVEL - 1,
      |          ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   39 |                                   __glibc_objsize (__s), __fmt,
      |                                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   40 |                                   __va_arg_pack ());
      |                                   ~~~~~~~~~~~~~~~~~
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c R_init_IRanges.c -o R_init_IRanges.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Ranges_class.c -o Ranges_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c RleViews_utils.c -o RleViews_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c SimpleIRangesList_class.c -o SimpleIRangesList_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c coverage_methods.c -o coverage_methods.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c extractListFragments.c -o extractListFragments.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c inter_range_methods.c -o inter_range_methods.o
gcc -shared -L/usr/local/lib/R/lib -L/usr/local/lib -o IRanges.so CompressedAtomicList_utils.o CompressedIRangesList_class.o CompressedList_class.o Grouping_class.o IPosRanges_comparison.o IRanges_class.o IRanges_constructor.o NCList.o R_init_IRanges.o Ranges_class.o RleViews_utils.o S4Vectors_stubs.o SimpleIRangesList_class.o coverage_methods.o extractListFragments.o inter_range_methods.o -L/usr/local/lib/R/lib -lR
installing to /tmp/built/00LOCK-IRanges/00new/IRanges/libs
** R
** inst
** byte-compile and prepare package for lazy loading
Creating a generic function for ‘drop’ from package ‘base’ in package ‘IRanges’
Creating a generic function for ‘runmed’ from package ‘stats’ in package ‘IRanges’
Creating a generic function for ‘chartr’ from package ‘base’ in package ‘IRanges’
Creating a generic function for ‘toupper’ from package ‘base’ in package ‘IRanges’
Creating a generic function for ‘tolower’ from package ‘base’ in package ‘IRanges’
Creating a generic function for ‘sub’ from package ‘base’ in package ‘IRanges’
Creating a generic function for ‘gsub’ from package ‘base’ in package ‘IRanges’
Creating a generic function for ‘startsWith’ from package ‘base’ in package ‘IRanges’
Creating a generic function for ‘endsWith’ from package ‘base’ in package ‘IRanges’
Creating a generic function for ‘smoothEnds’ from package ‘stats’ in package ‘IRanges’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘IRanges’ as ‘IRanges_2.32.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (IRanges)
* installing *binary* package ‘dbplyr’ ...
* ‘dbplyr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘dbplyr’ as ‘dbplyr_2.3.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (dbplyr)
* installing *binary* package ‘RSQLite’ ...
* ‘RSQLite’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘RSQLite’ as ‘RSQLite_2.2.20_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (RSQLite)
* installing *source* package ‘XVector’ ...
** using staged installation
** libs
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c IRanges_stubs.c -o IRanges_stubs.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Ocopy_byteblocks.c -o Ocopy_byteblocks.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c RDS_random_access.c -o RDS_random_access.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c R_init_XVector.c -o R_init_XVector.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c SharedDouble_class.c -o SharedDouble_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c SharedInteger_class.c -o SharedInteger_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c SharedRaw_class.c -o SharedRaw_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c SharedVector_class.c -o SharedVector_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XDouble_class.c -o XDouble_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XInteger_class.c -o XInteger_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XRawList_comparison.c -o XRawList_comparison.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XRaw_class.c -o XRaw_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XVectorList_class.c -o XVectorList_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XVector_class.c -o XVector_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c io_utils.c -o io_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c slice_methods.c -o slice_methods.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c vector_copy.c -o vector_copy.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c view_summarization_methods.c -o view_summarization_methods.o
gcc -shared -L/usr/local/lib/R/lib -L/usr/local/lib -o XVector.so IRanges_stubs.o Ocopy_byteblocks.o RDS_random_access.o R_init_XVector.o S4Vectors_stubs.o SharedDouble_class.o SharedInteger_class.o SharedRaw_class.o SharedVector_class.o XDouble_class.o XInteger_class.o XRawList_comparison.o XRaw_class.o XVectorList_class.o XVector_class.o io_utils.o slice_methods.o vector_copy.o view_summarization_methods.o -lz -L/usr/local/lib/R/lib -lR
installing to /tmp/built/00LOCK-XVector/00new/XVector/libs
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
** building package indices
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘XVector’ as ‘XVector_0.38.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (XVector)
* installing *source* package ‘GenomeInfoDb’ ...
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
packaged installation of ‘GenomeInfoDb’ as ‘GenomeInfoDb_1.34.7_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (GenomeInfoDb)
* installing *source* package ‘BiocFileCache’ ...
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
packaged installation of ‘BiocFileCache’ as ‘BiocFileCache_2.6.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (BiocFileCache)
* installing *source* package ‘Biostrings’ ...
** using staged installation
** libs
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c BAB_class.c -o BAB_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c BitMatrix.c -o BitMatrix.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c IRanges_stubs.c -o IRanges_stubs.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c MIndex_class.c -o MIndex_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c PreprocessedTB_class.c -o PreprocessedTB_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c R_init_Biostrings.c -o R_init_Biostrings.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c RoSeqs_utils.c -o RoSeqs_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c S4Vectors_stubs.c -o S4Vectors_stubs.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c SparseList_utils.c -o SparseList_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XStringSetList_class.c -o XStringSetList_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XStringSet_class.c -o XStringSet_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XString_class.c -o XString_class.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c XVector_stubs.c -o XVector_stubs.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c align_needwunsQS.c -o align_needwunsQS.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c align_pairwiseAlignment.c -o align_pairwiseAlignment.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c align_utils.c -o align_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c find_palindromes.c -o find_palindromes.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c gtestsim.c -o gtestsim.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c inject_code.c -o inject_code.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c letter_frequency.c -o letter_frequency.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c lowlevel_matching.c -o lowlevel_matching.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_PWM.c -o match_PWM.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_pattern.c -o match_pattern.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_pattern_boyermoore.c -o match_pattern_boyermoore.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_pattern_indels.c -o match_pattern_indels.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_pattern_shiftor.c -o match_pattern_shiftor.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_pdict.c -o match_pdict.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_pdict_ACtree2.c -o match_pdict_ACtree2.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_pdict_Twobit.c -o match_pdict_Twobit.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_pdict_utils.c -o match_pdict_utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c match_reporting.c -o match_reporting.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c matchprobes.c -o matchprobes.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c pmatchPattern.c -o pmatchPattern.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c read_fasta_files.c -o read_fasta_files.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c read_fastq_files.c -o read_fastq_files.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c replaceAt.c -o replaceAt.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c replace_letter_at.c -o replace_letter_at.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c strutils.c -o strutils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c translate.c -o translate.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c unstrsplit_methods.c -o unstrsplit_methods.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c utils.c -o utils.o
gcc -I"/usr/local/lib/R/include" -DNDEBUG  -I'/tmp/built/S4Vectors/include' -I'/tmp/built/IRanges/include' -I'/tmp/built/XVector/include' -I/usr/local/include   -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c xscat.c -o xscat.o
gcc -shared -L/usr/local/lib/R/lib -L/usr/local/lib -o Biostrings.so BAB_class.o BitMatrix.o IRanges_stubs.o MIndex_class.o PreprocessedTB_class.o R_init_Biostrings.o RoSeqs_utils.o S4Vectors_stubs.o SparseList_utils.o XStringSetList_class.o XStringSet_class.o XString_class.o XVector_stubs.o align_needwunsQS.o align_pairwiseAlignment.o align_utils.o find_palindromes.o gtestsim.o inject_code.o letter_frequency.o lowlevel_matching.o match_PWM.o match_pattern.o match_pattern_boyermoore.o match_pattern_indels.o match_pattern_shiftor.o match_pdict.o match_pdict_ACtree2.o match_pdict_Twobit.o match_pdict_utils.o match_reporting.o matchprobes.o pmatchPattern.o read_fasta_files.o read_fastq_files.o replaceAt.o replace_letter_at.o strutils.o translate.o unstrsplit_methods.o utils.o xscat.o -L/usr/local/lib/R/lib -lR
installing to /tmp/built/00LOCK-Biostrings/00new/Biostrings/libs
** R
** data
** inst
** byte-compile and prepare package for lazy loading
in method for ‘twoWayAlphabetFrequencyByQuality’ with signature ‘"QualityScaledXStringSet"’: no definition for class “QualityScaledXStringSet”
Creating a new generic function for ‘strsplit’ in package ‘Biostrings’
Creating a generic function for ‘ls’ from package ‘base’ in package ‘Biostrings’
Creating a new generic function for ‘pattern’ in package ‘Biostrings’
Creating a new generic function for ‘offset’ in package ‘Biostrings’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** checking absolute paths in shared objects and dynamic libraries
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘Biostrings’ as ‘Biostrings_2.66.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (Biostrings)
* installing *source* package ‘KEGGREST’ ...
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
packaged installation of ‘KEGGREST’ as ‘KEGGREST_1.38.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (KEGGREST)
* installing *source* package ‘AnnotationDbi’ ...
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
Creating a new generic function for ‘packageName’ in package ‘AnnotationDbi’
Creating a generic function for ‘ls’ from package ‘base’ in package ‘AnnotationDbi’
Creating a generic function for ‘eapply’ from package ‘base’ in package ‘AnnotationDbi’
Creating a generic function for ‘exists’ from package ‘base’ in package ‘AnnotationDbi’
Creating a generic function for ‘sample’ from package ‘base’ in package ‘AnnotationDbi’
** help
*** installing help indices
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
* creating tarball
packaged installation of ‘AnnotationDbi’ as ‘AnnotationDbi_1.60.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (AnnotationDbi)
* installing *source* package ‘UniProt.ws’ ...
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
packaged installation of ‘UniProt.ws’ as ‘UniProt.ws_2.38.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (UniProt.ws)

The downloaded source packages are in
	‘/tmp/RtmpiJW1MS/downloaded_packages’
Old packages: 'fansi', 'fontawesome', 'fs', 'knitr', 'Rcpp', 'sass', 'vctrs',
  'yaml', 'class', 'MASS', 'spatial'

real	5m11.271s
user	4m41.651s
sys	0m18.430s
