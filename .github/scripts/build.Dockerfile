FROM &bioc.CONTAINER_BASE_IMAGE as build
ARG LIBRARY
ARG PKG
ARG PLATFORM
USER root
COPY . /home/ubuntu/
WORKDIR /home/ubuntu
RUN mkdir -p ./$LIBRARY && mkdir -p /$LIBRARY && ls ./$LIBRARY && ls ./$LIBRARY | xargs -i mv ./$LIBRARY/{} /$LIBRARY/{} && bash .github/scripts/build_package.sh /$LIBRARY $PKG $PLATFORM && rm -rf /home/ubuntu/*

FROM scratch as export
COPY --from=build /tmp /tmp
