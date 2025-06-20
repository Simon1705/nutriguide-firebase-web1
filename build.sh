#!/bin/sh

# Exit script on any error
set -e

# Fix for git "dubious ownership" error
git config --global --add safe.directory '*'

# Download and extract Flutter
curl -L https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.22.2-stable.tar.xz | tar -xJ

# Add Flutter to the PATH
export PATH="$PATH:`pwd`/flutter/bin"

# Pre-download Flutter dependencies
flutter precache

# Build the Flutter web project
flutter build web 