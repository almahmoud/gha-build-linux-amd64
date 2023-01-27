+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''RcmdrPlugin.HH'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'?repositories' for details

replacement repositories:
    CRAN: https://packagemanager.posit.co/cran/__linux__/jammy/latest

Bioconductor version 3.16 (BiocManager 1.30.19), R 4.2.2 (2022-10-31)
Installing package(s) 'RcmdrPlugin.HH'
also installing the dependencies ‘bit’, ‘bit64’, ‘vctrs’, ‘backports’, ‘vroom’, ‘tzdb’, ‘rematch’, ‘generics’, ‘tidyr’, ‘DBI’, ‘deldir’, ‘zoo’, ‘isoband’, ‘checkmate’, ‘viridisLite’, ‘proxy’, ‘forcats’, ‘hms’, ‘readr’, ‘tidyselect’, ‘cellranger’, ‘progress’, ‘broom’, ‘dplyr’, ‘numDeriv’, ‘SparseM’, ‘MatrixModels’, ‘farver’, ‘labeling’, ‘munsell’, ‘mitools’, ‘png’, ‘jpeg’, ‘interp’, ‘mvtnorm’, ‘TH.data’, ‘sandwich’, ‘gtable’, ‘plyr’, ‘lmtest’, ‘Formula’, ‘ggplot2’, ‘data.table’, ‘htmlTable’, ‘viridis’, ‘gmp’, ‘e1071’, ‘haven’, ‘readstata13’, ‘readxl’, ‘nortest’, ‘carData’, ‘pbkrtest’, ‘quantreg’, ‘scales’, ‘survey’, ‘estimability’, ‘insight’, ‘minqa’, ‘nloptr’, ‘RcppEigen’, ‘latticeExtra’, ‘multcomp’, ‘gridExtra’, ‘reshape2’, ‘leaps’, ‘vcd’, ‘colorspace’, ‘RColorBrewer’, ‘Hmisc’, ‘abind’, ‘Rmpfr’, ‘RcmdrMisc’, ‘car’, ‘effects’, ‘tcltk2’, ‘relimp’, ‘lme4’, ‘HH’, ‘Rcmdr’

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/bit_4.0.5.tar.gz'
Content type 'binary/octet-stream' length 1121918 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/bit64_4.0.5.tar.gz'
Content type 'binary/octet-stream' length 574906 bytes (561 KB)
==================================================
downloaded 561 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/vctrs_0.5.2.tar.gz'
Content type 'binary/octet-stream' length 1282129 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/backports_1.4.1.tar.gz'
Content type 'binary/octet-stream' length 99762 bytes (97 KB)
==================================================
downloaded 97 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/vroom_1.6.1.tar.gz'
Content type 'binary/octet-stream' length 958604 bytes (936 KB)
==================================================
downloaded 936 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/tzdb_0.3.0.tar.gz'
Content type 'binary/octet-stream' length 1569245 bytes (1.5 MB)
==================================================
downloaded 1.5 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/rematch_1.0.1.tar.gz'
Content type 'binary/octet-stream' length 11986 bytes (11 KB)
==================================================
downloaded 11 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/generics_0.1.3.tar.gz'
Content type 'binary/octet-stream' length 73201 bytes (71 KB)
==================================================
downloaded 71 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/tidyr_1.3.0.tar.gz'
Content type 'binary/octet-stream' length 1198134 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/DBI_1.1.3.tar.gz'
Content type 'binary/octet-stream' length 748403 bytes (730 KB)
==================================================
downloaded 730 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/deldir_1.0-6.tar.gz'
Content type 'binary/octet-stream' length 306171 bytes (298 KB)
==================================================
downloaded 298 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/zoo_1.8-11.tar.gz'
Content type 'binary/octet-stream' length 1024169 bytes (1000 KB)
==================================================
downloaded 1000 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/isoband_0.2.7.tar.gz'
Content type 'binary/octet-stream' length 1641375 bytes (1.6 MB)
==================================================
downloaded 1.6 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/checkmate_2.1.0.tar.gz'
Content type 'binary/octet-stream' length 723617 bytes (706 KB)
==================================================
downloaded 706 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/viridisLite_0.4.1.tar.gz'
Content type 'binary/octet-stream' length 1296653 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/proxy_0.4-27.tar.gz'
Content type 'binary/octet-stream' length 207282 bytes (202 KB)
==================================================
downloaded 202 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/forcats_0.5.2.tar.gz'
Content type 'binary/octet-stream' length 374634 bytes (365 KB)
==================================================
downloaded 365 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/hms_1.1.2.tar.gz'
Content type 'binary/octet-stream' length 96500 bytes (94 KB)
==================================================
downloaded 94 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/readr_2.1.3.tar.gz'
Content type 'binary/octet-stream' length 3285620 bytes (3.1 MB)
==================================================
downloaded 3.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/tidyselect_1.2.0.tar.gz'
Content type 'binary/octet-stream' length 219415 bytes (214 KB)
==================================================
downloaded 214 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/cellranger_1.1.0.tar.gz'
Content type 'binary/octet-stream' length 100641 bytes (98 KB)
==================================================
downloaded 98 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/progress_1.2.2.tar.gz'
Content type 'binary/octet-stream' length 83456 bytes (81 KB)
==================================================
downloaded 81 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/broom_1.0.3.tar.gz'
Content type 'binary/octet-stream' length 1838755 bytes (1.8 MB)
==================================================
downloaded 1.8 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/dplyr_1.0.10.tar.gz'
Content type 'binary/octet-stream' length 1307837 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/numDeriv_2016.8-1.1.tar.gz'
Content type 'binary/octet-stream' length 112651 bytes (110 KB)
==================================================
downloaded 110 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/SparseM_1.81.tar.gz'
Content type 'binary/octet-stream' length 1104977 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/MatrixModels_0.5-1.tar.gz'
Content type 'binary/octet-stream' length 434533 bytes (424 KB)
==================================================
downloaded 424 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/farver_2.1.1.tar.gz'
Content type 'binary/octet-stream' length 2297101 bytes (2.2 MB)
==================================================
downloaded 2.2 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/labeling_0.4.2.tar.gz'
Content type 'binary/octet-stream' length 58419 bytes (57 KB)
==================================================
downloaded 57 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/munsell_0.5.0.tar.gz'
Content type 'binary/octet-stream' length 240157 bytes (234 KB)
==================================================
downloaded 234 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/mitools_2.4.tar.gz'
Content type 'binary/octet-stream' length 269265 bytes (262 KB)
==================================================
downloaded 262 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/png_0.1-8.tar.gz'
Content type 'binary/octet-stream' length 39953 bytes (39 KB)
==================================================
downloaded 39 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/jpeg_0.1-10.tar.gz'
Content type 'binary/octet-stream' length 28493 bytes (27 KB)
==================================================
downloaded 27 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/interp_1.1-3.tar.gz'
Content type 'binary/octet-stream' length 1084022 bytes (1.0 MB)
==================================================
downloaded 1.0 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/mvtnorm_1.1-3.tar.gz'
Content type 'binary/octet-stream' length 263444 bytes (257 KB)
==================================================
downloaded 257 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/TH.data_1.1-1.tar.gz'
Content type 'binary/octet-stream' length 8788383 bytes (8.4 MB)
==================================================
downloaded 8.4 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/sandwich_3.0-2.tar.gz'
Content type 'binary/octet-stream' length 1456523 bytes (1.4 MB)
==================================================
downloaded 1.4 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/gtable_0.3.1.tar.gz'
Content type 'binary/octet-stream' length 156267 bytes (152 KB)
==================================================
downloaded 152 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/plyr_1.8.8.tar.gz'
Content type 'binary/octet-stream' length 819020 bytes (799 KB)
==================================================
downloaded 799 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/lmtest_0.9-40.tar.gz'
Content type 'binary/octet-stream' length 402726 bytes (393 KB)
==================================================
downloaded 393 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/Formula_1.2-4.tar.gz'
Content type 'binary/octet-stream' length 175324 bytes (171 KB)
==================================================
downloaded 171 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/ggplot2_3.4.0.tar.gz'
Content type 'binary/octet-stream' length 4197384 bytes (4.0 MB)
==================================================
downloaded 4.0 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/data.table_1.14.6.tar.gz'
Content type 'binary/octet-stream' length 2082451 bytes (2.0 MB)
==================================================
downloaded 2.0 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/htmlTable_2.4.1.tar.gz'
Content type 'binary/octet-stream' length 416037 bytes (406 KB)
==================================================
downloaded 406 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/viridis_0.6.2.tar.gz'
Content type 'binary/octet-stream' length 2997414 bytes (2.9 MB)
==================================================
downloaded 2.9 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/gmp_0.6-10.tar.gz'
Content type 'binary/octet-stream' length 303437 bytes (296 KB)
==================================================
downloaded 296 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/e1071_1.7-12.tar.gz'
Content type 'binary/octet-stream' length 674609 bytes (658 KB)
==================================================
downloaded 658 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/haven_2.5.1.tar.gz'
Content type 'binary/octet-stream' length 1496754 bytes (1.4 MB)
==================================================
downloaded 1.4 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/readstata13_0.10.0.tar.gz'
Content type 'binary/octet-stream' length 241327 bytes (235 KB)
==================================================
downloaded 235 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/readxl_1.4.1.tar.gz'
Content type 'binary/octet-stream' length 2250716 bytes (2.1 MB)
==================================================
downloaded 2.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/nortest_1.0-4.tar.gz'
Content type 'binary/octet-stream' length 35960 bytes (35 KB)
==================================================
downloaded 35 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/carData_3.0-5.tar.gz'
Content type 'binary/octet-stream' length 1819283 bytes (1.7 MB)
==================================================
downloaded 1.7 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/pbkrtest_0.5.2.tar.gz'
Content type 'binary/octet-stream' length 187217 bytes (182 KB)
==================================================
downloaded 182 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/quantreg_5.94.tar.gz'
Content type 'binary/octet-stream' length 1664593 bytes (1.6 MB)
==================================================
downloaded 1.6 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/scales_1.2.1.tar.gz'
Content type 'binary/octet-stream' length 607228 bytes (592 KB)
==================================================
downloaded 592 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/survey_4.1-1.tar.gz'
Content type 'binary/octet-stream' length 2715793 bytes (2.6 MB)
==================================================
downloaded 2.6 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/estimability_1.4.1.tar.gz'
Content type 'binary/octet-stream' length 40540 bytes (39 KB)
==================================================
downloaded 39 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/insight_0.18.8.tar.gz'
Content type 'binary/octet-stream' length 2009431 bytes (1.9 MB)
==================================================
downloaded 1.9 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/minqa_1.2.5.tar.gz'
Content type 'binary/octet-stream' length 118770 bytes (115 KB)
==================================================
downloaded 115 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/nloptr_2.0.3.tar.gz'
Content type 'binary/octet-stream' length 706962 bytes (690 KB)
==================================================
downloaded 690 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/RcppEigen_0.3.3.9.3.tar.gz'
Content type 'binary/octet-stream' length 1547173 bytes (1.5 MB)
==================================================
downloaded 1.5 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/latticeExtra_0.6-30.tar.gz'
Content type 'binary/octet-stream' length 2201783 bytes (2.1 MB)
==================================================
downloaded 2.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/multcomp_1.4-20.tar.gz'
Content type 'binary/octet-stream' length 739281 bytes (721 KB)
==================================================
downloaded 721 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/gridExtra_2.3.tar.gz'
Content type 'binary/octet-stream' length 1106730 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/reshape2_1.4.4.tar.gz'
Content type 'binary/octet-stream' length 115912 bytes (113 KB)
==================================================
downloaded 113 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/leaps_3.1.tar.gz'
Content type 'binary/octet-stream' length 100357 bytes (98 KB)
==================================================
downloaded 98 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/vcd_1.4-10.tar.gz'
Content type 'binary/octet-stream' length 1280559 bytes (1.2 MB)
==================================================
downloaded 1.2 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/colorspace_2.1-0.tar.gz'
Content type 'binary/octet-stream' length 2589197 bytes (2.5 MB)
==================================================
downloaded 2.5 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/RColorBrewer_1.1-3.tar.gz'
Content type 'binary/octet-stream' length 53064 bytes (51 KB)
==================================================
downloaded 51 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/Hmisc_4.7-2.tar.gz'
Content type 'binary/octet-stream' length 3253325 bytes (3.1 MB)
==================================================
downloaded 3.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/abind_1.4-5.tar.gz'
Content type 'binary/octet-stream' length 60719 bytes (59 KB)
==================================================
downloaded 59 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/Rmpfr_0.9-0.tar.gz'
Content type 'binary/octet-stream' length 1191890 bytes (1.1 MB)
==================================================
downloaded 1.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/RcmdrMisc_2.7-2.tar.gz'
Content type 'binary/octet-stream' length 212173 bytes (207 KB)
==================================================
downloaded 207 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/car_3.1-1.tar.gz'
Content type 'binary/octet-stream' length 1697238 bytes (1.6 MB)
==================================================
downloaded 1.6 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/effects_4.2-2.tar.gz'
Content type 'binary/octet-stream' length 2395831 bytes (2.3 MB)
==================================================
downloaded 2.3 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/tcltk2_1.2-11.tar.gz'
Content type 'binary/octet-stream' length 965192 bytes (942 KB)
==================================================
downloaded 942 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/relimp_1.0-5.tar.gz'
Content type 'binary/octet-stream' length 75471 bytes (73 KB)
==================================================
downloaded 73 KB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/lme4_1.1-31.tar.gz'
Content type 'binary/octet-stream' length 4224972 bytes (4.0 MB)
==================================================
downloaded 4.0 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/HH_3.1-49.tar.gz'
Content type 'binary/octet-stream' length 1815619 bytes (1.7 MB)
==================================================
downloaded 1.7 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/Rcmdr_2.8-0.tar.gz'
Content type 'binary/octet-stream' length 5296942 bytes (5.1 MB)
==================================================
downloaded 5.1 MB

trying URL 'https://packagemanager.posit.co/cran/__linux__/jammy/latest/src/contrib/RcmdrPlugin.HH_1.1-47.tar.gz'
Content type 'binary/octet-stream' length 251306 bytes (245 KB)
==================================================
downloaded 245 KB

* installing *binary* package ‘bit’ ...
* ‘bit’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘bit’ as ‘bit_4.0.5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (bit)
* installing *binary* package ‘vctrs’ ...
* ‘vctrs’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘vctrs’ as ‘vctrs_0.5.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (vctrs)
* installing *binary* package ‘backports’ ...
* ‘backports’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘backports’ as ‘backports_1.4.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (backports)
* installing *binary* package ‘tzdb’ ...
* ‘tzdb’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘tzdb’ as ‘tzdb_0.3.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (tzdb)
* installing *binary* package ‘rematch’ ...
* ‘rematch’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘rematch’ as ‘rematch_1.0.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (rematch)
* installing *binary* package ‘generics’ ...
* ‘generics’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘generics’ as ‘generics_0.1.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (generics)
* installing *binary* package ‘DBI’ ...
* ‘DBI’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘DBI’ as ‘DBI_1.1.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (DBI)
* installing *binary* package ‘deldir’ ...
* ‘deldir’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘deldir’ as ‘deldir_1.0-6_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (deldir)
* installing *binary* package ‘zoo’ ...
* ‘zoo’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘zoo’ as ‘zoo_1.8-11_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (zoo)
* installing *binary* package ‘isoband’ ...
* ‘isoband’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘isoband’ as ‘isoband_0.2.7_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (isoband)
* installing *binary* package ‘viridisLite’ ...
* ‘viridisLite’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘viridisLite’ as ‘viridisLite_0.4.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (viridisLite)
* installing *binary* package ‘proxy’ ...
* ‘proxy’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘proxy’ as ‘proxy_0.4-27_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (proxy)
* installing *binary* package ‘forcats’ ...
* ‘forcats’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘forcats’ as ‘forcats_0.5.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (forcats)
* installing *binary* package ‘numDeriv’ ...
* ‘numDeriv’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘numDeriv’ as ‘numDeriv_2016.8-1.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (numDeriv)
* installing *binary* package ‘SparseM’ ...
* ‘SparseM’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘SparseM’ as ‘SparseM_1.81_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (SparseM)
* installing *binary* package ‘MatrixModels’ ...
* ‘MatrixModels’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘MatrixModels’ as ‘MatrixModels_0.5-1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (MatrixModels)
* installing *binary* package ‘farver’ ...
* ‘farver’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘farver’ as ‘farver_2.1.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (farver)
* installing *binary* package ‘labeling’ ...
* ‘labeling’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘labeling’ as ‘labeling_0.4.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (labeling)
* installing *binary* package ‘png’ ...
* ‘png’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘png’ as ‘png_0.1-8_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (png)
* installing *binary* package ‘jpeg’ ...
* ‘jpeg’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘jpeg’ as ‘jpeg_0.1-10_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (jpeg)
* installing *binary* package ‘mvtnorm’ ...
* ‘mvtnorm’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘mvtnorm’ as ‘mvtnorm_1.1-3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (mvtnorm)
* installing *binary* package ‘TH.data’ ...
* ‘TH.data’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘TH.data’ as ‘TH.data_1.1-1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (TH.data)
* installing *binary* package ‘gtable’ ...
* ‘gtable’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘gtable’ as ‘gtable_0.3.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (gtable)
* installing *binary* package ‘plyr’ ...
* ‘plyr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘plyr’ as ‘plyr_1.8.8_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (plyr)
* installing *binary* package ‘Formula’ ...
* ‘Formula’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘Formula’ as ‘Formula_1.2-4_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (Formula)
* installing *binary* package ‘data.table’ ...
* ‘data.table’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘data.table’ as ‘data.table_1.14.6_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (data.table)
* installing *binary* package ‘gmp’ ...
* ‘gmp’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘gmp’ as ‘gmp_0.6-10_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (gmp)
* installing *binary* package ‘readstata13’ ...
* ‘readstata13’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘readstata13’ as ‘readstata13_0.10.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (readstata13)
* installing *binary* package ‘nortest’ ...
* ‘nortest’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘nortest’ as ‘nortest_1.0-4_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (nortest)
* installing *binary* package ‘carData’ ...
* ‘carData’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘carData’ as ‘carData_3.0-5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (carData)
* installing *binary* package ‘estimability’ ...
* ‘estimability’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘estimability’ as ‘estimability_1.4.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (estimability)
* installing *binary* package ‘insight’ ...
* ‘insight’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘insight’ as ‘insight_0.18.8_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (insight)
* installing *binary* package ‘minqa’ ...
* ‘minqa’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘minqa’ as ‘minqa_1.2.5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (minqa)
* installing *binary* package ‘nloptr’ ...
* ‘nloptr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘nloptr’ as ‘nloptr_2.0.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (nloptr)
* installing *binary* package ‘RcppEigen’ ...
* ‘RcppEigen’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘RcppEigen’ as ‘RcppEigen_0.3.3.9.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (RcppEigen)
* installing *binary* package ‘leaps’ ...
* ‘leaps’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘leaps’ as ‘leaps_3.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (leaps)
* installing *binary* package ‘colorspace’ ...
* ‘colorspace’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘colorspace’ as ‘colorspace_2.1-0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (colorspace)
* installing *binary* package ‘RColorBrewer’ ...
* ‘RColorBrewer’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘RColorBrewer’ as ‘RColorBrewer_1.1-3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (RColorBrewer)
* installing *binary* package ‘abind’ ...
* ‘abind’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘abind’ as ‘abind_1.4-5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (abind)
* installing *binary* package ‘tcltk2’ ...
* ‘tcltk2’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘tcltk2’ as ‘tcltk2_1.2-11_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (tcltk2)
* installing *binary* package ‘relimp’ ...
* ‘relimp’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘relimp’ as ‘relimp_1.0-5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (relimp)
* installing *binary* package ‘bit64’ ...
* ‘bit64’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘bit64’ as ‘bit64_4.0.5_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (bit64)
* installing *binary* package ‘checkmate’ ...
* ‘checkmate’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘checkmate’ as ‘checkmate_2.1.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (checkmate)
* installing *binary* package ‘hms’ ...
* ‘hms’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘hms’ as ‘hms_1.1.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (hms)
* installing *binary* package ‘tidyselect’ ...
* ‘tidyselect’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘tidyselect’ as ‘tidyselect_1.2.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (tidyselect)
* installing *binary* package ‘cellranger’ ...
* ‘cellranger’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘cellranger’ as ‘cellranger_1.1.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (cellranger)
* installing *binary* package ‘munsell’ ...
* ‘munsell’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘munsell’ as ‘munsell_0.5.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (munsell)
* installing *binary* package ‘mitools’ ...
* ‘mitools’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘mitools’ as ‘mitools_2.4_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (mitools)
* installing *binary* package ‘interp’ ...
* ‘interp’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘interp’ as ‘interp_1.1-3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (interp)
* installing *binary* package ‘sandwich’ ...
* ‘sandwich’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘sandwich’ as ‘sandwich_3.0-2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (sandwich)
* installing *binary* package ‘lmtest’ ...
* ‘lmtest’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘lmtest’ as ‘lmtest_0.9-40_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (lmtest)
* installing *binary* package ‘e1071’ ...
* ‘e1071’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘e1071’ as ‘e1071_1.7-12_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (e1071)
* installing *binary* package ‘quantreg’ ...
* ‘quantreg’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘quantreg’ as ‘quantreg_5.94_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (quantreg)
* installing *binary* package ‘gridExtra’ ...
* ‘gridExtra’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘gridExtra’ as ‘gridExtra_2.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (gridExtra)
* installing *binary* package ‘reshape2’ ...
* ‘reshape2’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘reshape2’ as ‘reshape2_1.4.4_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (reshape2)
* installing *binary* package ‘Rmpfr’ ...
* ‘Rmpfr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘Rmpfr’ as ‘Rmpfr_0.9-0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (Rmpfr)
* installing *binary* package ‘lme4’ ...
* ‘lme4’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘lme4’ as ‘lme4_1.1-31_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (lme4)
* installing *binary* package ‘progress’ ...
* ‘progress’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘progress’ as ‘progress_1.2.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (progress)
* installing *binary* package ‘dplyr’ ...
* ‘dplyr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘dplyr’ as ‘dplyr_1.0.10_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (dplyr)
* installing *binary* package ‘htmlTable’ ...
* ‘htmlTable’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘htmlTable’ as ‘htmlTable_2.4.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (htmlTable)
* installing *binary* package ‘scales’ ...
* ‘scales’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘scales’ as ‘scales_1.2.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (scales)
* installing *binary* package ‘survey’ ...
* ‘survey’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘survey’ as ‘survey_4.1-1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (survey)
* installing *binary* package ‘latticeExtra’ ...
* ‘latticeExtra’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘latticeExtra’ as ‘latticeExtra_0.6-30_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (latticeExtra)
* installing *binary* package ‘multcomp’ ...
* ‘multcomp’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘multcomp’ as ‘multcomp_1.4-20_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (multcomp)
* installing *binary* package ‘vcd’ ...
* ‘vcd’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘vcd’ as ‘vcd_1.4-10_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (vcd)
* installing *binary* package ‘vroom’ ...
* ‘vroom’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘vroom’ as ‘vroom_1.6.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (vroom)
* installing *binary* package ‘tidyr’ ...
* ‘tidyr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘tidyr’ as ‘tidyr_1.3.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (tidyr)
* installing *binary* package ‘ggplot2’ ...
* ‘ggplot2’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘ggplot2’ as ‘ggplot2_3.4.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (ggplot2)
* installing *binary* package ‘readxl’ ...
* ‘readxl’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘readxl’ as ‘readxl_1.4.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (readxl)
* installing *binary* package ‘effects’ ...
* ‘effects’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘effects’ as ‘effects_4.2-2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (effects)
* installing *binary* package ‘readr’ ...
* ‘readr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘readr’ as ‘readr_2.1.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (readr)
* installing *binary* package ‘broom’ ...
* ‘broom’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘broom’ as ‘broom_1.0.3_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (broom)
* installing *binary* package ‘viridis’ ...
* ‘viridis’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘viridis’ as ‘viridis_0.6.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (viridis)
* installing *binary* package ‘haven’ ...
* ‘haven’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘haven’ as ‘haven_2.5.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (haven)
* installing *binary* package ‘pbkrtest’ ...
* ‘pbkrtest’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘pbkrtest’ as ‘pbkrtest_0.5.2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (pbkrtest)
* installing *binary* package ‘Hmisc’ ...
* ‘Hmisc’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘Hmisc’ as ‘Hmisc_4.7-2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (Hmisc)
* installing *binary* package ‘car’ ...
* ‘car’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘car’ as ‘car_3.1-1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (car)
* installing *binary* package ‘HH’ ...
* ‘HH’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘HH’ as ‘HH_3.1-49_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (HH)
* installing *binary* package ‘RcmdrMisc’ ...
* ‘RcmdrMisc’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘RcmdrMisc’ as ‘RcmdrMisc_2.7-2_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (RcmdrMisc)
* installing *binary* package ‘Rcmdr’ ...
* ‘Rcmdr’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘Rcmdr’ as ‘Rcmdr_2.8-0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (Rcmdr)
* installing *binary* package ‘RcmdrPlugin.HH’ ...
* ‘RcmdrPlugin.HH’ was already a binary package and will not be rebuilt
* creating tarball
packaged installation of ‘RcmdrPlugin.HH’ as ‘RcmdrPlugin.HH_1.1-47_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (RcmdrPlugin.HH)

The downloaded source packages are in
	‘/tmp/RtmpooyRwZ/downloaded_packages’
Old packages: 'fansi', 'fontawesome', 'fs', 'knitr', 'Rcpp', 'sass', 'vctrs',
  'yaml', 'class', 'MASS', 'spatial'

real	1m25.449s
user	0m56.624s
sys	0m8.352s
