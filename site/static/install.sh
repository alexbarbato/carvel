


#!/bin/bash
## **This is an autogenerated file, do not change it manually**

if test -z "$BASH_VERSION"; then
  echo "Please run this script using bash, not sh or any other shell." >&2
  exit 1
fi

install() {
  set -euo pipefail

  dst_dir="${K14SIO_INSTALL_BIN_DIR:-/usr/local/bin}"

  if [ -x "$(command -v wget)" ]; then
    dl_bin="wget -nv -O-"
  else
    dl_bin="curl -s -L"
  fi

  shasum -v 1>/dev/null 2>&1 || (echo "Missing shasum binary" && exit 1)

  if [[ `uname` == Darwin ]]; then
    binary_type=darwin-amd64
    
    ytt_checksum=700dbb362a73950d779cf298ba191de2a35394fa68bf19e74add5e7384b2875a
    imgpkg_checksum=d143a5719ac645ec4921bc14a184505454955a815f2e6a215de8e5aa5179c2c9
    kbld_checksum=9f4b12722c79a1bc748ea882e47ff939272a45c477fed8ac7e206001aca0bfb1
    kapp_checksum=8746b9b49c47f27b9b08f425f247a3ea0b847f5cb9a1b88e4cff6c036112c7d7
    kwt_checksum=ea9e6eb76b203799d9f0d3177ac32b9d1d8e531bae363141dfe7030cb6e53a88
    vendir_checksum=90ae82718c1072831f3097bdb031d5a897cc9f2f8334e2e1d7f35e35d0abd84f
    kctrl_checksum=65087b674099497fb9decbe85f75f59d891f9f458c7009bdfbca57de98a87ef7
  else
    binary_type=linux-amd64
    
    ytt_checksum=de2dd0a659fd12b2d80e00fa2a4a9316db67e0372e79c3bf48586ea53201180e
    imgpkg_checksum=de2ea4c292833736f9627c26ab43191f923aa96ae0c66dc95c546be42e0f90c5
    kbld_checksum=cdbfdfc1e5da490eb59705bfbc30b3fd05c0485474aff15bec52352af46d5880
    kapp_checksum=7cc17971634da69c80d7159199c2c514c38b479d28987e055ce2c173bfbd9306
    kwt_checksum=1022483a8b59fe238e782a9138f1fee6ca61ecf7ccd1e5f0d98e95c56df94d87
    vendir_checksum=feb2836153508adfb6fd33c127e466c9ce26577678e93a252be2fec445f4501f
    kctrl_checksum=ed47847850039cf5572af49420d0365b2cc68a3a731fbc5e8a23b13eb8ffb020
  fi

  echo "Installing ${binary_type} binaries..."

  
  echo "Installing ytt..."
  $dl_bin https://github.com/carvel-dev/ytt/releases/download/v0.47.0/ytt-${binary_type} > /tmp/ytt
  echo "${ytt_checksum}  /tmp/ytt" | shasum -c -
  mv /tmp/ytt ${dst_dir}/ytt
  chmod +x ${dst_dir}/ytt
  echo "Installed ${dst_dir}/ytt v0.47.0"
  
  echo "Installing imgpkg..."
  $dl_bin https://github.com/carvel-dev/imgpkg/releases/download/v0.40.0/imgpkg-${binary_type} > /tmp/imgpkg
  echo "${imgpkg_checksum}  /tmp/imgpkg" | shasum -c -
  mv /tmp/imgpkg ${dst_dir}/imgpkg
  chmod +x ${dst_dir}/imgpkg
  echo "Installed ${dst_dir}/imgpkg v0.40.0"
  
  echo "Installing kbld..."
  $dl_bin https://github.com/carvel-dev/kbld/releases/download/v0.39.0/kbld-${binary_type} > /tmp/kbld
  echo "${kbld_checksum}  /tmp/kbld" | shasum -c -
  mv /tmp/kbld ${dst_dir}/kbld
  chmod +x ${dst_dir}/kbld
  echo "Installed ${dst_dir}/kbld v0.39.0"
  
  echo "Installing kapp..."
  $dl_bin https://github.com/carvel-dev/kapp/releases/download/v0.60.0/kapp-${binary_type} > /tmp/kapp
  echo "${kapp_checksum}  /tmp/kapp" | shasum -c -
  mv /tmp/kapp ${dst_dir}/kapp
  chmod +x ${dst_dir}/kapp
  echo "Installed ${dst_dir}/kapp v0.60.0"
  
  echo "Installing kwt..."
  $dl_bin https://github.com/carvel-dev/kwt/releases/download/v0.0.8/kwt-${binary_type} > /tmp/kwt
  echo "${kwt_checksum}  /tmp/kwt" | shasum -c -
  mv /tmp/kwt ${dst_dir}/kwt
  chmod +x ${dst_dir}/kwt
  echo "Installed ${dst_dir}/kwt v0.0.8"
  
  echo "Installing vendir..."
  $dl_bin https://github.com/carvel-dev/vendir/releases/download/v0.39.0/vendir-${binary_type} > /tmp/vendir
  echo "${vendir_checksum}  /tmp/vendir" | shasum -c -
  mv /tmp/vendir ${dst_dir}/vendir
  chmod +x ${dst_dir}/vendir
  echo "Installed ${dst_dir}/vendir v0.39.0"
  
  echo "Installing kctrl..."
  $dl_bin https://github.com/carvel-dev/kapp-controller/releases/download/v0.49.0/kctrl-${binary_type} > /tmp/kctrl
  echo "${kctrl_checksum}  /tmp/kctrl" | shasum -c -
  mv /tmp/kctrl ${dst_dir}/kctrl
  chmod +x ${dst_dir}/kctrl
  echo "Installed ${dst_dir}/kctrl v0.49.0"
  
}

install
