FROM &bioc.CONTAINER_BASE_IMAGE
USER root
COPY .github/scripts/deps_json.R /tmp/bioc_build/deps_json.R
RUN mkdir -p /tmp/bioc_build && Rscript -e 'sessionInfo()$running' > /tmp/bioc_build/os && Rscript -e 'R.Version()$version.string' > /tmp/bioc_build/r && Rscript -e 'BiocManager::version()' > /tmp/bioc_build/bioc && echo "tmp/built" > /tmp/bioc_build/library && Rscript -e 'R.Version()$arch' > /tmp/bioc_build/arch && cd /tmp/bioc_build && Rscript /tmp/bioc_build/deps_json.R --uniquedeps=uniquedeps.json --biocdeps=biocdeps.json 
