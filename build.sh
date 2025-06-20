#!/bin/bash

# Configure git
git config --global --add safe.directory '*'

# Install required packages
yum update -y && yum install -y curl git unzip xz tar

# Download and extract Flutter
curl -L https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.0-stable.tar.xz | tar -xJ

# Add Flutter to PATH
export PATH="$PATH:`pwd`/flutter/bin"

# Configure Flutter
flutter config --no-analytics
flutter config --no-cli-animations
export CHROME_EXECUTABLE=/usr/bin/google-chrome

# Enable web
flutter config --enable-web

# Build web app
flutter build web --release --web-renderer html 