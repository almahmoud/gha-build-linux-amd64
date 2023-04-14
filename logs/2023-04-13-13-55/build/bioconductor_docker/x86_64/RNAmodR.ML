+ Rscript -e 'Sys.setenv(BIOCONDUCTOR_USE_CONTAINER_REPOSITORY=FALSE); p <- .libPaths(); p <- c('\''/tmp/tmp/built'\'', p); .libPaths(p); if(BiocManager::install('\''RNAmodR.ML'\'', INSTALL_opts = '\''--build'\'', update = TRUE, quiet = FALSE, force = TRUE, keep_outputs = TRUE) %in% rownames(installed.packages())) q(status = 0) else q(status = 1)'
'getOption("repos")' replaces Bioconductor standard repositories, see
'help("repositories", package = "BiocManager")' for details.
Replacement repositories:
    CRAN: https://cloud.r-project.org
Bioconductor version 3.17 (BiocManager 1.30.20), R 4.3.0 beta (2023-04-06
  r84184)
Installing package(s) 'RNAmodR.ML'
also installing the dependency ‘ranger’

trying URL 'https://cloud.r-project.org/src/contrib/ranger_0.15.1.tar.gz'
Content type 'application/x-gzip' length 162164 bytes (158 KB)
==================================================
downloaded 158 KB

trying URL 'https://bioconductor.org/packages/3.17/bioc/src/contrib/RNAmodR.ML_1.13.0.tar.gz'
Content type 'application/x-gzip' length 1532760 bytes (1.5 MB)
==================================================
downloaded 1.5 MB

* installing *source* package ‘ranger’ ...
** package ‘ranger’ successfully unpacked and MD5 sums checked
** using staged installation
** libs
using C++ compiler: ‘g++ (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0’
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c AAA_check_cpp11.cpp -o AAA_check_cpp11.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Data.cpp -o Data.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c DataSparse.cpp -o DataSparse.o
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:397,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from DataSparse.h:31,
                 from DataSparse.cpp:29:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ [-Wignored-attributes]
   60 | template<> struct is_arithmetic<__m128>  { enum { value = true }; };
      |                                       ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:61:40: warning: ignoring attributes on template argument ‘__m128i’ [-Wignored-attributes]
   61 | template<> struct is_arithmetic<__m128i> { enum { value = true }; };
      |                                        ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:62:40: warning: ignoring attributes on template argument ‘__m128d’ [-Wignored-attributes]
   62 | template<> struct is_arithmetic<__m128d> { enum { value = true }; };
      |                                        ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:161:43: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
  161 | template<> struct unpacket_traits<Packet4f> { typedef float  type; enum {size=4, alignment=Aligned16}; typedef Packet4f half; };
      |                                           ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:162:43: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
  162 | template<> struct unpacket_traits<Packet2d> { typedef double type; enum {size=2, alignment=Aligned16}; typedef Packet2d half; };
      |                                           ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:163:43: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4i’ {aka ‘__m128i’} [-Wignored-attributes]
  163 | template<> struct unpacket_traits<Packet4i> { typedef int    type; enum {size=4, alignment=Aligned16}; typedef Packet4i half; };
      |                                           ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:718:35: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
  718 | struct palign_impl<Offset,Packet4f>
      |                                   ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:741:35: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4i’ {aka ‘__m128i’} [-Wignored-attributes]
  741 | struct palign_impl<Offset,Packet4i>
      |                                   ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:764:35: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
  764 | struct palign_impl<Offset,Packet2d>
      |                                   ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:778:34: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
  778 | ptranspose(PacketBlock<Packet4f,4>& kernel) {
      |                                  ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:783:34: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
  783 | ptranspose(PacketBlock<Packet2d,2>& kernel) {
      |                                  ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:790:34: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4i’ {aka ‘__m128i’} [-Wignored-attributes]
  790 | ptranspose(PacketBlock<Packet4i,4>& kernel) {
      |                                  ^
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:377,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from DataSparse.h:31,
                 from DataSparse.cpp:29:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:15:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
   15 |   template<> struct conj_helper<PACKET_REAL, PACKET_CPLX, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:232:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  232 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet2cf,Packet4f)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:22:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
   22 |   template<> struct conj_helper<PACKET_CPLX, PACKET_REAL, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:232:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  232 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet2cf,Packet4f)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:15:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
   15 |   template<> struct conj_helper<PACKET_REAL, PACKET_CPLX, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:417:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  417 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet1cd,Packet2d)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:22:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
   22 |   template<> struct conj_helper<PACKET_CPLX, PACKET_REAL, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:417:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  417 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet1cd,Packet2d)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:370,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from DataSparse.h:31,
                 from DataSparse.cpp:29:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h: In instantiation of ‘struct Eigen::internal::find_best_packet<float, 4>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:22:57:   required from ‘struct Eigen::internal::traits<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:243:49:   required from ‘struct Eigen::internal::traits<Eigen::Quaternion<float> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:24:46:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:44: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                                       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::unpacket_traits<__vector(4) float>::half’ {aka ‘__m128’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:205:88: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
  205 |   typedef typename find_best_packet_helper<Size,typename packet_traits<T>::type>::type type;
      |                                                                                        ^~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:439,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from DataSparse.h:31,
                 from DataSparse.cpp:29:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<float, 4, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<float, 4, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<float, 4, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<float, 4, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:46:50:   required from ‘class Eigen::QuaternionBase<Eigen::Quaternion<float> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:250:7:   required from ‘class Eigen::Quaternion<float>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:27:3:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:370,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from DataSparse.h:31,
                 from DataSparse.cpp:29:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h: In instantiation of ‘struct Eigen::internal::find_best_packet<double, 4>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:22:57:   required from ‘struct Eigen::internal::traits<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:243:49:   required from ‘struct Eigen::internal::traits<Eigen::Quaternion<double> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:88:47:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:44: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                                       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::unpacket_traits<__vector(2) double>::half’ {aka ‘__m128d’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:205:88: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  205 |   typedef typename find_best_packet_helper<Size,typename packet_traits<T>::type>::type type;
      |                                                                                        ^~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:439,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from DataSparse.h:31,
                 from DataSparse.cpp:29:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<double, 4, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<double, 4, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<double, 4, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<double, 4, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:46:50:   required from ‘class Eigen::QuaternionBase<Eigen::Quaternion<double> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:250:7:   required from ‘class Eigen::Quaternion<double>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:92:3:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/SparseCore:37,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Sparse:26,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:31,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from DataSparse.h:31,
                 from DataSparse.cpp:29:
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrixBase.h: In instantiation of ‘class Eigen::SparseMatrixBase<Eigen::SparseMatrix<double, 0, int> >’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:36:7:   required from ‘class Eigen::SparseCompressedBase<Eigen::SparseMatrix<double, 0, int> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:96:7:   required from ‘class Eigen::SparseMatrix<double, 0, int>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/IterativeSolvers/ConstrainedConjGrad.h:61:25:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrixBase.h:47:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
   47 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:370,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from DataSparse.h:31,
                 from DataSparse.cpp:29:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h: In instantiation of ‘struct Eigen::internal::find_best_packet<int, -1>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:22:57:   required from ‘struct Eigen::internal::traits<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, 1>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:168:29:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:44: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                                       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::unpacket_traits<__vector(2) long long int>::half’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:205:88: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  205 |   typedef typename find_best_packet_helper<Size,typename packet_traits<T>::type>::type type;
      |                                                                                        ^~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:439,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from DataSparse.h:31,
                 from DataSparse.cpp:29:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, 1>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:168:29:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> >, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> >, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> >, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Transpose.h:115:37:   required from ‘class Eigen::TransposeImpl<Eigen::Matrix<int, -1, 1>, Eigen::Dense>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Transpose.h:52:37:   required from ‘class Eigen::Transpose<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:178:72:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<int, -1, -1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<int, -1, -1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, -1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, -1>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:179:36:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Array<int, -1, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Array<int, -1, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Array<int, -1, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Array<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/ArrayBase.h:39:34:   required from ‘class Eigen::ArrayBase<Eigen::Array<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Array<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Array.h:45:7:   required from ‘class Eigen::Array<int, -1, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:1243:70:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::insert(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:217:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::coeffRef(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
DataSparse.h:70:15:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, Eigen::Array<int, -1, 1> >, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, Eigen::Array<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/ArrayBase.h:39:34:   required from ‘class Eigen::ArrayBase<Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, Eigen::Array<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/CwiseNullaryOp.h:60:7:   required from ‘class Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, Eigen::Array<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:1243:70:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::insert(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:217:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::coeffRef(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
DataSparse.h:70:15:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:478:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >, 2>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MapBase.h:37:34:   required from ‘class Eigen::MapBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >, 0>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Map.h:94:79:   required from ‘class Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:65:29:   required from ‘Eigen::Index Eigen::SparseCompressedBase<Derived>::nonZeros() const [with Derived = Eigen::SparseMatrix<double, 0, int>; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:1139:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::insert(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:217:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::coeffRef(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
DataSparse.h:70:15:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘Eigen::Index Eigen::internal::first_default_aligned(const Eigen::DenseBase<Derived>&) [with Derived = Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >; Eigen::Index = long int]’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Redux.h:225:63:   required from ‘static Eigen::internal::redux_impl<Func, Derived, 3, 0>::Scalar Eigen::internal::redux_impl<Func, Derived, 3, 0>::run(const Derived&, const Func&) [with Func = Eigen::internal::scalar_sum_op<int, int>; Derived = Eigen::internal::redux_evaluator<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> > >; Eigen::internal::redux_impl<Func, Derived, 3, 0>::Scalar = int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Redux.h:418:56:   required from ‘typename Eigen::internal::traits<T>::Scalar Eigen::DenseBase<Derived>::redux(const Func&) const [with BinaryOp = Eigen::internal::scalar_sum_op<int, int>; Derived = Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >; typename Eigen::internal::traits<T>::Scalar = int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Redux.h:453:25:   required from ‘typename Eigen::internal::traits<T>::Scalar Eigen::DenseBase<Derived>::sum() const [with Derived = Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >; typename Eigen::internal::traits<T>::Scalar = int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:65:35:   required from ‘Eigen::Index Eigen::SparseCompressedBase<Derived>::nonZeros() const [with Derived = Eigen::SparseMatrix<double, 0, int>; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:1139:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::insert(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:217:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::coeffRef(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
DataSparse.h:70:15:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:650:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  650 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Forest.cpp -o Forest.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c ForestClassification.cpp -o ForestClassification.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c ForestProbability.cpp -o ForestProbability.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c ForestRegression.cpp -o ForestRegression.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c ForestSurvival.cpp -o ForestSurvival.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c RcppExports.cpp -o RcppExports.o
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:397,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:5:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ [-Wignored-attributes]
   60 | template<> struct is_arithmetic<__m128>  { enum { value = true }; };
      |                                       ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:61:40: warning: ignoring attributes on template argument ‘__m128i’ [-Wignored-attributes]
   61 | template<> struct is_arithmetic<__m128i> { enum { value = true }; };
      |                                        ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:62:40: warning: ignoring attributes on template argument ‘__m128d’ [-Wignored-attributes]
   62 | template<> struct is_arithmetic<__m128d> { enum { value = true }; };
      |                                        ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:161:43: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
  161 | template<> struct unpacket_traits<Packet4f> { typedef float  type; enum {size=4, alignment=Aligned16}; typedef Packet4f half; };
      |                                           ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:162:43: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
  162 | template<> struct unpacket_traits<Packet2d> { typedef double type; enum {size=2, alignment=Aligned16}; typedef Packet2d half; };
      |                                           ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:163:43: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4i’ {aka ‘__m128i’} [-Wignored-attributes]
  163 | template<> struct unpacket_traits<Packet4i> { typedef int    type; enum {size=4, alignment=Aligned16}; typedef Packet4i half; };
      |                                           ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:718:35: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
  718 | struct palign_impl<Offset,Packet4f>
      |                                   ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:741:35: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4i’ {aka ‘__m128i’} [-Wignored-attributes]
  741 | struct palign_impl<Offset,Packet4i>
      |                                   ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:764:35: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
  764 | struct palign_impl<Offset,Packet2d>
      |                                   ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:778:34: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
  778 | ptranspose(PacketBlock<Packet4f,4>& kernel) {
      |                                  ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:783:34: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
  783 | ptranspose(PacketBlock<Packet2d,2>& kernel) {
      |                                  ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:790:34: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4i’ {aka ‘__m128i’} [-Wignored-attributes]
  790 | ptranspose(PacketBlock<Packet4i,4>& kernel) {
      |                                  ^
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:377,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:5:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:15:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
   15 |   template<> struct conj_helper<PACKET_REAL, PACKET_CPLX, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:232:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  232 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet2cf,Packet4f)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:22:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
   22 |   template<> struct conj_helper<PACKET_CPLX, PACKET_REAL, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:232:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  232 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet2cf,Packet4f)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:15:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
   15 |   template<> struct conj_helper<PACKET_REAL, PACKET_CPLX, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:417:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  417 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet1cd,Packet2d)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:22:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
   22 |   template<> struct conj_helper<PACKET_CPLX, PACKET_REAL, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:417:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  417 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet1cd,Packet2d)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:370,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:5:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h: In instantiation of ‘struct Eigen::internal::find_best_packet<float, 4>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:22:57:   required from ‘struct Eigen::internal::traits<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:243:49:   required from ‘struct Eigen::internal::traits<Eigen::Quaternion<float> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:24:46:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:44: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                                       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::unpacket_traits<__vector(4) float>::half’ {aka ‘__m128’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:205:88: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
  205 |   typedef typename find_best_packet_helper<Size,typename packet_traits<T>::type>::type type;
      |                                                                                        ^~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:439,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:5:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<float, 4, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<float, 4, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<float, 4, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<float, 4, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:46:50:   required from ‘class Eigen::QuaternionBase<Eigen::Quaternion<float> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:250:7:   required from ‘class Eigen::Quaternion<float>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:27:3:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:370,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:5:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h: In instantiation of ‘struct Eigen::internal::find_best_packet<double, 4>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:22:57:   required from ‘struct Eigen::internal::traits<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:243:49:   required from ‘struct Eigen::internal::traits<Eigen::Quaternion<double> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:88:47:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:44: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                                       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::unpacket_traits<__vector(2) double>::half’ {aka ‘__m128d’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:205:88: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  205 |   typedef typename find_best_packet_helper<Size,typename packet_traits<T>::type>::type type;
      |                                                                                        ^~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:439,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:5:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<double, 4, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<double, 4, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<double, 4, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<double, 4, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:46:50:   required from ‘class Eigen::QuaternionBase<Eigen::Quaternion<double> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:250:7:   required from ‘class Eigen::Quaternion<double>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:92:3:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/SparseCore:37,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Sparse:26,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:31,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:5:
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrixBase.h: In instantiation of ‘class Eigen::SparseMatrixBase<Eigen::SparseMatrix<double, 0, int> >’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:36:7:   required from ‘class Eigen::SparseCompressedBase<Eigen::SparseMatrix<double, 0, int> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:96:7:   required from ‘class Eigen::SparseMatrix<double, 0, int>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/IterativeSolvers/ConstrainedConjGrad.h:61:25:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrixBase.h:47:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
   47 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:370,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:5:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h: In instantiation of ‘struct Eigen::internal::find_best_packet<int, -1>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:22:57:   required from ‘struct Eigen::internal::traits<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, 1>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:168:29:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:44: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                                       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::unpacket_traits<__vector(2) long long int>::half’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:205:88: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  205 |   typedef typename find_best_packet_helper<Size,typename packet_traits<T>::type>::type type;
      |                                                                                        ^~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:439,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from RcppExports.cpp:5:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, 1>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:168:29:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> >, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> >, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> >, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Transpose.h:115:37:   required from ‘class Eigen::TransposeImpl<Eigen::Matrix<int, -1, 1>, Eigen::Dense>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Transpose.h:52:37:   required from ‘class Eigen::Transpose<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:178:72:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<int, -1, -1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<int, -1, -1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, -1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, -1>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:179:36:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::SparseMatrix<double, 0, int>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:298:80:   required from ‘struct Eigen::internal::evaluator<Eigen::SparseCompressedBase<Eigen::SparseMatrix<double, 0, int> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:1391:8:   required from ‘struct Eigen::internal::evaluator<Eigen::SparseMatrix<double, 0, int> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseAssign.h:77:20:   required from ‘void Eigen::internal::assign_sparse_to_sparse(DstXprType&, const SrcXprType&) [with DstXprType = Eigen::SparseMatrix<double, 0, int>; SrcXprType = Eigen::SparseMatrix<double, 0, int>]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseAssign.h:132:28:   required from ‘static void Eigen::internal::Assignment<DstXprType, SrcXprType, Functor, Eigen::internal::Sparse2Sparse>::run(DstXprType&, const SrcXprType&, const Eigen::internal::assign_op<typename DstXprType::Scalar, typename SrcXprType::Scalar>&) [with DstXprType = Eigen::SparseMatrix<double, 0, int>; SrcXprType = Eigen::SparseMatrix<double, 0, int>; Functor = Eigen::internal::assign_op<double, double>; typename SrcXprType::Scalar = double; typename DstXprType::Scalar = double]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/AssignEvaluator.h:836:49:   required from ‘void Eigen::internal::call_assignment_no_alias(Dst&, const Src&, const Func&) [with Dst = Eigen::SparseMatrix<double, 0, int>; Src = Eigen::SparseMatrix<double, 0, int>; Func = Eigen::internal::assign_op<double, double>]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/AssignEvaluator.h:842:27:   [ skipping 3 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:709:13:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::SparseMatrix(const Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>&) [with _Scalar = double; int _Options = 0; _StorageIndex = int]’
/tmp/tmp/built/RcppEigen/include/RcppEigenWrap.h:432:24:   required from ‘Eigen::SparseMatrix<Scalar> Rcpp::traits::Exporter<Eigen::SparseMatrix<Scalar> >::get() [with T = double]’
/usr/local/lib/R/site-library/Rcpp/include/Rcpp/as.h:89:32:   required from ‘T Rcpp::internal::as(SEXP, Rcpp::traits::r_type_generic_tag) [with T = Eigen::SparseMatrix<double, 0, int>; SEXP = SEXPREC*]’
/usr/local/lib/R/site-library/Rcpp/include/Rcpp/as.h:152:31:   required from ‘T Rcpp::as(SEXP) [with T = Eigen::SparseMatrix<double, 0, int>; SEXP = SEXPREC*]’
/usr/local/lib/R/site-library/Rcpp/include/Rcpp/InputParameter.h:46:54:   required from ‘Rcpp::ReferenceInputParameter<T>::ReferenceInputParameter(SEXP) [with T = Eigen::SparseMatrix<double, 0, int>; SEXP = SEXPREC*]’
RcppExports.cpp:58:94:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:478:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >, 2>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MapBase.h:37:34:   required from ‘class Eigen::MapBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >, 0>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Map.h:94:79:   required from ‘class Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:65:29:   [ skipping 8 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:709:13:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::SparseMatrix(const Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>&) [with _Scalar = double; int _Options = 0; _StorageIndex = int]’
/tmp/tmp/built/RcppEigen/include/RcppEigenWrap.h:432:24:   required from ‘Eigen::SparseMatrix<Scalar> Rcpp::traits::Exporter<Eigen::SparseMatrix<Scalar> >::get() [with T = double]’
/usr/local/lib/R/site-library/Rcpp/include/Rcpp/as.h:89:32:   required from ‘T Rcpp::internal::as(SEXP, Rcpp::traits::r_type_generic_tag) [with T = Eigen::SparseMatrix<double, 0, int>; SEXP = SEXPREC*]’
/usr/local/lib/R/site-library/Rcpp/include/Rcpp/as.h:152:31:   required from ‘T Rcpp::as(SEXP) [with T = Eigen::SparseMatrix<double, 0, int>; SEXP = SEXPREC*]’
/usr/local/lib/R/site-library/Rcpp/include/Rcpp/InputParameter.h:46:54:   required from ‘Rcpp::ReferenceInputParameter<T>::ReferenceInputParameter(SEXP) [with T = Eigen::SparseMatrix<double, 0, int>; SEXP = SEXPREC*]’
RcppExports.cpp:58:94:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘Eigen::Index Eigen::internal::first_default_aligned(const Eigen::DenseBase<Derived>&) [with Derived = Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >; Eigen::Index = long int]’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Redux.h:225:63:   required from ‘static Eigen::internal::redux_impl<Func, Derived, 3, 0>::Scalar Eigen::internal::redux_impl<Func, Derived, 3, 0>::run(const Derived&, const Func&) [with Func = Eigen::internal::scalar_sum_op<int, int>; Derived = Eigen::internal::redux_evaluator<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> > >; Eigen::internal::redux_impl<Func, Derived, 3, 0>::Scalar = int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Redux.h:418:56:   required from ‘typename Eigen::internal::traits<T>::Scalar Eigen::DenseBase<Derived>::redux(const Func&) const [with BinaryOp = Eigen::internal::scalar_sum_op<int, int>; Derived = Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >; typename Eigen::internal::traits<T>::Scalar = int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Redux.h:453:25:   required from ‘typename Eigen::internal::traits<T>::Scalar Eigen::DenseBase<Derived>::sum() const [with Derived = Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >; typename Eigen::internal::traits<T>::Scalar = int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:65:35:   required from ‘Eigen::Index Eigen::SparseCompressedBase<Derived>::nonZeros() const [with Derived = Eigen::SparseMatrix<double, 0, int>; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:163:21:   required from ‘Eigen::SparseCompressedBase<Derived>::InnerIterator::InnerIterator(const Eigen::SparseCompressedBase<Derived>&, Eigen::Index) [with Derived = Eigen::SparseMatrix<double, 0, int>; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseAssign.h:90:53:   [ skipping 6 instantiation contexts, use -ftemplate-backtrace-limit=0 to disable ]
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:709:13:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::SparseMatrix(const Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>&) [with _Scalar = double; int _Options = 0; _StorageIndex = int]’
/tmp/tmp/built/RcppEigen/include/RcppEigenWrap.h:432:24:   required from ‘Eigen::SparseMatrix<Scalar> Rcpp::traits::Exporter<Eigen::SparseMatrix<Scalar> >::get() [with T = double]’
/usr/local/lib/R/site-library/Rcpp/include/Rcpp/as.h:89:32:   required from ‘T Rcpp::internal::as(SEXP, Rcpp::traits::r_type_generic_tag) [with T = Eigen::SparseMatrix<double, 0, int>; SEXP = SEXPREC*]’
/usr/local/lib/R/site-library/Rcpp/include/Rcpp/as.h:152:31:   required from ‘T Rcpp::as(SEXP) [with T = Eigen::SparseMatrix<double, 0, int>; SEXP = SEXPREC*]’
/usr/local/lib/R/site-library/Rcpp/include/Rcpp/InputParameter.h:46:54:   required from ‘Rcpp::ReferenceInputParameter<T>::ReferenceInputParameter(SEXP) [with T = Eigen::SparseMatrix<double, 0, int>; SEXP = SEXPREC*]’
RcppExports.cpp:58:94:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:650:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  650 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c Tree.cpp -o Tree.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c TreeClassification.cpp -o TreeClassification.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c TreeProbability.cpp -o TreeProbability.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c TreeRegression.cpp -o TreeRegression.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c TreeSurvival.cpp -o TreeSurvival.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c rangerCpp.cpp -o rangerCpp.o
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:397,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from rangerCpp.cpp:28:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:60:39: warning: ignoring attributes on template argument ‘__m128’ [-Wignored-attributes]
   60 | template<> struct is_arithmetic<__m128>  { enum { value = true }; };
      |                                       ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:61:40: warning: ignoring attributes on template argument ‘__m128i’ [-Wignored-attributes]
   61 | template<> struct is_arithmetic<__m128i> { enum { value = true }; };
      |                                        ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:62:40: warning: ignoring attributes on template argument ‘__m128d’ [-Wignored-attributes]
   62 | template<> struct is_arithmetic<__m128d> { enum { value = true }; };
      |                                        ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:161:43: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
  161 | template<> struct unpacket_traits<Packet4f> { typedef float  type; enum {size=4, alignment=Aligned16}; typedef Packet4f half; };
      |                                           ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:162:43: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
  162 | template<> struct unpacket_traits<Packet2d> { typedef double type; enum {size=2, alignment=Aligned16}; typedef Packet2d half; };
      |                                           ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:163:43: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4i’ {aka ‘__m128i’} [-Wignored-attributes]
  163 | template<> struct unpacket_traits<Packet4i> { typedef int    type; enum {size=4, alignment=Aligned16}; typedef Packet4i half; };
      |                                           ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:718:35: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
  718 | struct palign_impl<Offset,Packet4f>
      |                                   ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:741:35: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4i’ {aka ‘__m128i’} [-Wignored-attributes]
  741 | struct palign_impl<Offset,Packet4i>
      |                                   ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:764:35: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
  764 | struct palign_impl<Offset,Packet2d>
      |                                   ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:778:34: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
  778 | ptranspose(PacketBlock<Packet4f,4>& kernel) {
      |                                  ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:783:34: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
  783 | ptranspose(PacketBlock<Packet2d,2>& kernel) {
      |                                  ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/PacketMath.h:790:34: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4i’ {aka ‘__m128i’} [-Wignored-attributes]
  790 | ptranspose(PacketBlock<Packet4i,4>& kernel) {
      |                                  ^
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:377,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from rangerCpp.cpp:28:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:15:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
   15 |   template<> struct conj_helper<PACKET_REAL, PACKET_CPLX, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:232:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  232 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet2cf,Packet4f)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:22:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet4f’ {aka ‘__m128’} [-Wignored-attributes]
   22 |   template<> struct conj_helper<PACKET_CPLX, PACKET_REAL, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:232:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  232 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet2cf,Packet4f)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:15:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
   15 |   template<> struct conj_helper<PACKET_REAL, PACKET_CPLX, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:417:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  417 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet1cd,Packet2d)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/Default/ConjHelper.h:22:70: warning: ignoring attributes on template argument ‘Eigen::internal::Packet2d’ {aka ‘__m128d’} [-Wignored-attributes]
   22 |   template<> struct conj_helper<PACKET_CPLX, PACKET_REAL, false,false> {                                          \
      |                                                                      ^
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/arch/SSE/Complex.h:417:1: note: in expansion of macro ‘EIGEN_MAKE_CONJ_HELPER_CPLX_REAL’
  417 | EIGEN_MAKE_CONJ_HELPER_CPLX_REAL(Packet1cd,Packet2d)
      | ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:370,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from rangerCpp.cpp:28:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h: In instantiation of ‘struct Eigen::internal::find_best_packet<float, 4>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:22:57:   required from ‘struct Eigen::internal::traits<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:243:49:   required from ‘struct Eigen::internal::traits<Eigen::Quaternion<float> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:24:46:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:44: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                                       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::unpacket_traits<__vector(4) float>::half’ {aka ‘__m128’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:205:88: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
  205 |   typedef typename find_best_packet_helper<Size,typename packet_traits<T>::type>::type type;
      |                                                                                        ^~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:439,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from rangerCpp.cpp:28:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<float, 4, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<float, 4, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<float, 4, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<float, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<float, 4, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:46:50:   required from ‘class Eigen::QuaternionBase<Eigen::Quaternion<float> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:250:7:   required from ‘class Eigen::Quaternion<float>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:27:3:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<float>::type’ {aka ‘__m128’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:370,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from rangerCpp.cpp:28:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h: In instantiation of ‘struct Eigen::internal::find_best_packet<double, 4>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:22:57:   required from ‘struct Eigen::internal::traits<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:243:49:   required from ‘struct Eigen::internal::traits<Eigen::Quaternion<double> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:88:47:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:44: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                                       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::unpacket_traits<__vector(2) double>::half’ {aka ‘__m128d’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:205:88: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
  205 |   typedef typename find_best_packet_helper<Size,typename packet_traits<T>::type>::type type;
      |                                                                                        ^~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:439,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from rangerCpp.cpp:28:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<double, 4, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<double, 4, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<double, 4, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<double, 4, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<double, 4, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:46:50:   required from ‘class Eigen::QuaternionBase<Eigen::Quaternion<double> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/Quaternion.h:250:7:   required from ‘class Eigen::Quaternion<double>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Geometry/arch/Geometry_SSE.h:92:3:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/SparseCore:37,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Sparse:26,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:31,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from rangerCpp.cpp:28:
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrixBase.h: In instantiation of ‘class Eigen::SparseMatrixBase<Eigen::SparseMatrix<double, 0, int> >’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:36:7:   required from ‘class Eigen::SparseCompressedBase<Eigen::SparseMatrix<double, 0, int> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:96:7:   required from ‘class Eigen::SparseMatrix<double, 0, int>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/IterativeSolvers/ConstrainedConjGrad.h:61:25:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrixBase.h:47:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<double>::type’ {aka ‘__m128d’} [-Wignored-attributes]
   47 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:370,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from rangerCpp.cpp:28:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h: In instantiation of ‘struct Eigen::internal::find_best_packet<int, -1>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:22:57:   required from ‘struct Eigen::internal::traits<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, 1>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:168:29:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:44: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                                       ~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  187 |          bool Stop = Size==Dynamic || (Size%unpacket_traits<PacketType>::size)==0 || is_same<PacketType,typename unpacket_traits<PacketType>::half>::value>
      |                      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:187:83: warning: ignoring attributes on template argument ‘Eigen::internal::unpacket_traits<__vector(2) long long int>::half’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/util/XprHelper.h:205:88: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  205 |   typedef typename find_best_packet_helper<Size,typename packet_traits<T>::type>::type type;
      |                                                                                        ^~~~
In file included from /tmp/tmp/built/RcppEigen/include/Eigen/Core:439,
                 from /tmp/tmp/built/RcppEigen/include/Eigen/Dense:1,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigenForward.h:30,
                 from /tmp/tmp/built/RcppEigen/include/RcppEigen.h:25,
                 from rangerCpp.cpp:28:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, 1>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:168:29:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
   55 |                      >::type PacketReturnType;
      |                              ^~~~~~~~~~~~~~~~
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> >, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> >, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> >, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Transpose<Eigen::Matrix<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Transpose.h:115:37:   required from ‘class Eigen::TransposeImpl<Eigen::Matrix<int, -1, 1>, Eigen::Dense>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Transpose.h:52:37:   required from ‘class Eigen::Transpose<Eigen::Matrix<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:178:72:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Matrix<int, -1, -1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Matrix<int, -1, -1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Matrix<int, -1, -1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Matrix<int, -1, -1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Matrix.h:178:7:   required from ‘class Eigen::Matrix<int, -1, -1>’
/tmp/tmp/built/RcppEigen/include/unsupported/Eigen/src/KroneckerProduct/KroneckerTensorProduct.h:179:36:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Array<int, -1, 1>, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:300:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Array<int, -1, 1>, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:551:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Array<int, -1, 1>, 3>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Array<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/ArrayBase.h:39:34:   required from ‘class Eigen::ArrayBase<Eigen::Array<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/PlainObjectBase.h:98:7:   required from ‘class Eigen::PlainObjectBase<Eigen::Array<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Array.h:45:7:   required from ‘class Eigen::Array<int, -1, 1>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:1243:70:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::insert(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:217:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::coeffRef(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
DataSparse.h:70:15:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, Eigen::Array<int, -1, 1> >, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, Eigen::Array<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/ArrayBase.h:39:34:   required from ‘class Eigen::ArrayBase<Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, Eigen::Array<int, -1, 1> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/CwiseNullaryOp.h:60:7:   required from ‘class Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, Eigen::Array<int, -1, 1> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:1243:70:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::insert(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:217:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::coeffRef(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
DataSparse.h:70:15:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘class Eigen::DenseCoeffsBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >, 0>’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:478:7:   required from ‘class Eigen::DenseCoeffsBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >, 2>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseBase.h:41:34:   required from ‘class Eigen::DenseBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MatrixBase.h:48:34:   required from ‘class Eigen::MatrixBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> > >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/MapBase.h:37:34:   required from ‘class Eigen::MapBase<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >, 0>’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Map.h:94:79:   required from ‘class Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:65:29:   required from ‘Eigen::Index Eigen::SparseCompressedBase<Derived>::nonZeros() const [with Derived = Eigen::SparseMatrix<double, 0, int>; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:1139:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::insert(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:217:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::coeffRef(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
DataSparse.h:70:15:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:55:30: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h: In instantiation of ‘Eigen::Index Eigen::internal::first_default_aligned(const Eigen::DenseBase<Derived>&) [with Derived = Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >; Eigen::Index = long int]’:
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Redux.h:225:63:   required from ‘static Eigen::internal::redux_impl<Func, Derived, 3, 0>::Scalar Eigen::internal::redux_impl<Func, Derived, 3, 0>::run(const Derived&, const Func&) [with Func = Eigen::internal::scalar_sum_op<int, int>; Derived = Eigen::internal::redux_evaluator<Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> > >; Eigen::internal::redux_impl<Func, Derived, 3, 0>::Scalar = int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Redux.h:418:56:   required from ‘typename Eigen::internal::traits<T>::Scalar Eigen::DenseBase<Derived>::redux(const Func&) const [with BinaryOp = Eigen::internal::scalar_sum_op<int, int>; Derived = Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >; typename Eigen::internal::traits<T>::Scalar = int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/Redux.h:453:25:   required from ‘typename Eigen::internal::traits<T>::Scalar Eigen::DenseBase<Derived>::sum() const [with Derived = Eigen::Map<const Eigen::Matrix<int, -1, 1>, 0, Eigen::Stride<0, 0> >; typename Eigen::internal::traits<T>::Scalar = int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseCompressedBase.h:65:35:   required from ‘Eigen::Index Eigen::SparseCompressedBase<Derived>::nonZeros() const [with Derived = Eigen::SparseMatrix<double, 0, int>; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:1139:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::insert(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
/tmp/tmp/built/RcppEigen/include/Eigen/src/SparseCore/SparseMatrix.h:217:16:   required from ‘Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar& Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::coeffRef(Eigen::Index, Eigen::Index) [with _Scalar = double; int _Options = 0; _StorageIndex = int; Eigen::SparseMatrix<_Scalar, _Flags, _StorageIndex>::Scalar = double; Eigen::Index = long int]’
DataSparse.h:70:15:   required from here
/tmp/tmp/built/RcppEigen/include/Eigen/src/Core/DenseCoeffsBase.h:650:74: warning: ignoring attributes on template argument ‘Eigen::internal::packet_traits<int>::type’ {aka ‘__m128i’} [-Wignored-attributes]
  650 |   return internal::first_aligned<int(unpacket_traits<DefaultPacketType>::alignment),Derived>(m);
      |                                                                          ^~~~~~~~~
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c utility.cpp -o utility.o
g++ -std=gnu++17 -I"/usr/local/lib/R/include" -DNDEBUG -DR_BUILD -I'/usr/local/lib/R/site-library/Rcpp/include' -I'/tmp/tmp/built/RcppEigen/include' -I/usr/local/include    -fpic  -g -O2 -fstack-protector-strong -Wformat -Werror=format-security -Wdate-time -D_FORTIFY_SOURCE=2 -g  -c utilityRcpp.cpp -o utilityRcpp.o
g++ -std=gnu++17 -shared -L/usr/local/lib/R/lib -L/usr/local/lib -o ranger.so AAA_check_cpp11.o Data.o DataSparse.o Forest.o ForestClassification.o ForestProbability.o ForestRegression.o ForestSurvival.o RcppExports.o Tree.o TreeClassification.o TreeProbability.o TreeRegression.o TreeSurvival.o rangerCpp.o utility.o utilityRcpp.o -L/usr/local/lib/R/lib -lR
installing to /tmp/tmp/built/00LOCK-ranger/00new/ranger/libs
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
packaged installation of ‘ranger’ as ‘ranger_0.15.1_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (ranger)
* installing *source* package ‘RNAmodR.ML’ ...
** using staged installation
** R
** data
** inst
** byte-compile and prepare package for lazy loading
Warning message:
replacing previous import ‘utils::findMatches’ by ‘S4Vectors::findMatches’ when loading ‘AnnotationDbi’ 
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
packaged installation of ‘RNAmodR.ML’ as ‘RNAmodR.ML_1.13.0_R_x86_64-pc-linux-gnu.tar.gz’
* DONE (RNAmodR.ML)

The downloaded source packages are in
	‘/tmp/RtmpMYsBWR/downloaded_packages’

real	1m45.704s
user	1m39.458s
sys	0m5.712s
