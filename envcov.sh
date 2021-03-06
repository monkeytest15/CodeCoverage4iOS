#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${DIR}/env.sh

# Change the report name if you like:
LCOV_INFO=Coverage.info

XCODECOVERAGE_PATH=${DIR}
LCOV_PATH="${XCODECOVERAGE_PATH}/lcov-1.11/bin"
OBJ_DIR=${OBJECT_FILE_DIR_normal}/${CURRENT_ARCH}

# Fix for the new LLVM-COV that requires gcov to have a -v paramter
LCOV() {
	${LCOV_PATH}/lcov "$@" --gcov-tool ${XCODECOVERAGE_PATH}/llvm-cov-wrapper.sh
}
