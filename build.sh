TMP_DIR=$(mktemp -d)
# cp /home/jayasharma/libcudnn7-dev_7.0.5.15-1+cuda9.0_amd64.deb ${TMP_DIR}/


# ------------------------- GPU ------------------------
# 1. CUSTOM
# cp /home/jayasharma/docker/packages/cpu_mkl/tensorflow-1.9.0-cp35-cp35m-linux_x86_64.whl "${TMP_DIR}"
# nvidia-docker build --no-cache --pull -t tensorflow/tensorflow:custom-gpu -f Dockerfile.gpu "${TMP_DIR}"

# 2. DEVEL
# nvidia-docker build --no-cache --pull -t tensorflow/tensorflow:devel-gpu -f Dockerfile-devel.gpu "${TMP_DIR}"


# ------------------------- CPU ------------------------
# 1. CUSTOM
# cp /home/jayasharma/docker/packages/cpu_mkl/tensorflow-1.9.0-cp35-cp35m-linux_x86_64.whl "${TMP_DIR}"
docker build --no-cache --pull -t tensorflow/tensorflow:custom-cpu -f Dockerfile.cpu "${TMP_DIR}"

# 2. DEVEL
# docker build --no-cache --pull -t tensorflow/tensorflow:devel-cpu -f Dockerfile-devel.cpu "${TMP_DIR}"
