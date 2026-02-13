# ===== Stage 1 : Build =====
FROM ubuntu:22.04 AS builder

# Dépendances nécessaires pour compiler
RUN apt-get update && apt-get install -y \
    git \
    autoconf \
    automake \
    autotools-dev \
    curl \
    python3 \
    libmpc-dev \
    libmpfr-dev \
    libgmp-dev \
    gawk \
    build-essential \
    bison \
    flex \
    texinfo \
    gperf \
    libtool \
    patchutils \
    bc \
    zlib1g-dev \
    libexpat-dev \
    ninja-build \
    && rm -rf /var/lib/apt/lists/*

# Cloner et compiler
RUN git clone https://github.com/riscv/riscv-gnu-toolchain /riscv-gnu-toolchain
WORKDIR /riscv-gnu-toolchain

RUN ./configure --prefix=/opt/riscv --with-arch=rv32gc --with-abi=ilp32d --disable-multilib && \
    make linux -j$(nproc)

# ===== Stage 2 : Runtime =====
FROM ubuntu:22.04

# Installer uniquement ce qu’il faut pour exécuter les binaires (librairies nécessaires)
RUN apt-get update && apt-get install -y \
    libmpc3 \
    libmpfr6 \
    libgmp10 \
    zlib1g \
    libexpat1 \
    bsdmainutils \
    && rm -rf /var/lib/apt/lists/*

# Copier seulement le toolchain
COPY --from=builder /opt/riscv /opt/riscv

# Mettre à jour le PATH
ENV PATH="/opt/riscv/bin:${PATH}"

WORKDIR /workspace
CMD ["/bin/bash"]
