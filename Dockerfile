FROM quay.io/pypa/manylinux1_x86_64:latest

LABEL "com.github.actions.name"="manylinux1 x86_64"
LABEL "com.github.actions.description"="Run a script under manylinux1 container. Needs BUILD_SCRIPT_PATH and PYPI_PKG_DIST_NAME env vars."
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/re-actors/manylinux1_x86_64-action"
LABEL "homepage"="https://github.com/re-actors"
LABEL "maintainer"="Sviatoslav Sydorenko <wk+re-actors@sydorenko.org.ua>"

ENTRYPOINT ["bash"]
CMD "\"$GITHUB_WORKSPACE/${BUILD_SCRIPT_PATH:-tools/build-wheels.sh}\" \"${PYPI_PKG_DIST_NAME:-aiohttp}\""
