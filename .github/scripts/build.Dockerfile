FROM ghcr.io/bioconductor/bioconductor:RELEASE_3_16
ARG LIBRARY
ARG PKG
ARG PLATFORM
USER root
COPY . /home/ubuntu/
WORKDIR /home/ubuntu
RUN ls ./$LIBRARY | xargs -i mv ./$LIBRARY/{} /$LIBRARY/{} && bash .github/scripts/build_package.sh /$LIBRARY $PKG $PLATFORM
