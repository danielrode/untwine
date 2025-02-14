# Author: Daniel Rode


FROM alpine:3.21

# Install build and runtime dependencies
RUN ash <<'EOF'
  set -e  # Exit on error
  apk add \
    git \
    cmake \
    make \
    g++ \
    pdal-dev \
  ;
EOF

# Build and install Untwine
RUN ash <<'EOF'
  mkdir -p /usr/local/src
  cd /usr/local/src
  git clone --depth 1 --branch 1.4.0 https://github.com/hobuinc/untwine.git
  cd untwine
  mkdir build
  cd build
  cmake ..
  make
  ln -s /usr/local/src/untwine/build/bin/untwine /usr/local/bin/
EOF

# Set Untwine to run by default when container is called
ENTRYPOINT ["untwine"]
