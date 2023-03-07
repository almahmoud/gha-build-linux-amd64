FROM &bioc.CONTAINER_BASE_IMAGE as initial
USER root
COPY .github/scripts/deps_json.R /tmp/bioc_build/deps_json.R
RUN mkdir -p /tmp/bioc_build && Rscript -e 'cat(sessionInfo()$running)' > /tmp/bioc_build/os && Rscript -e 'cat(R.Version()$version.string)' > /tmp/bioc_build/r && Rscript -e 'cat(unlist(BiocManager::version()))' > /tmp/bioc_build/bioc && echo "tmp/built" > /tmp/bioc_build/library && Rscript -e 'cat(R.Version()$arch)' > /tmp/bioc_build/arch && cd /tmp/bioc_build && Rscript /tmp/bioc_build/deps_json.R --uniquedeps=uniquedeps.json --biocdeps=biocdeps.json 

FROM scratch as export
COPY --from=initial /tmp/bioc_build /tmp/bioc_build
