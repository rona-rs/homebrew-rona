#!/bin/bash
# Script to calculate SHA256 checksum for Homebrew formula
# Usage: ./get-checksum.sh [version]

VERSION=${1:-"2.10.0"}
URL="https://github.com/rona-rs/rona/archive/refs/tags/v${VERSION}.tar.gz"

echo "Calculating SHA256 for version ${VERSION}..."
echo "URL: ${URL}"
echo ""

# Download and calculate SHA256
SHA256=$(curl -sL "${URL}" | shasum -a 256 | awk '{print $1}')

if [ -z "$SHA256" ]; then
    echo "Error: Failed to calculate checksum. Please check:"
    echo "1. The GitHub release v${VERSION} exists"
    echo "2. You have internet connection"
    echo "3. The URL is correct"
    exit 1
fi

echo "SHA256: ${SHA256}"
echo ""
echo "Update Formula/rona.rb with:"
echo "  url \"${URL}\""
echo "  sha256 \"${SHA256}\""
echo "  version \"${VERSION}\""

