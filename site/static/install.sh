


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
    
    ytt_checksum=2b32add6ceb66d0abf41663316810b2175c4df59286a6c0ca5b39582a689621f
    imgpkg_checksum=07ef96b0f34fdf4d984ceb3acaa8f34dd0d7c5e4fcbd7404f3ee4e2f424df1d3
    kbld_checksum=bcbe9c242811ff8abc7e60565dde848a9f438eab5714c034f173e382198a4f02
    kapp_checksum=ac1f2bd9f43f0d77465f8f4e4b2540a498c6fd3228d7e8452e360d66e04344c7
    kwt_checksum=555d50d5bed601c2e91f7444b3f44fdc424d721d7da72955725a97f3860e2517
    vendir_checksum=9ec92c3fa318cb90592ca46487da583965e0a0ff7ad3fe5725cc5b08acbfff1c
    kctrl_checksum=63b5c22c080958930b51fcb860bf9c58e12306119e4d9b2a236cae1aa48dbc5e
  else
    binary_type=linux-amd64
    
    ytt_checksum=4be1ecdcad3cd43066692944b13ca6f99f03043a1ca78a4c4590011400a61e32
    imgpkg_checksum=264b058d9f747fbd4942d39e0a47748f907e4eea8ec7c69a20637c8ef9c7bfe0
    kbld_checksum=0aada0a2b8b0546c6c8cf4cb4713df34f18a88db2ba22615e1eeb9db8cabfbd1
    kapp_checksum=cc1cca783173badd5e74edc1f10decfcae85525cfece73b3d43acfda1eaccbe5
    kwt_checksum=92a1f18be6a8dca15b7537f4cc666713b556630c20c9246b335931a9379196a0
    vendir_checksum=c1764cfb93f12325b83c0142214fd05b5f7985b7cc5b8278e5154397adb99189
    kctrl_checksum=7c85e58a604f3989ac5d71ea8b835e3d3e370264c9294de57b1df34d51907324
  fi

  echo "Installing ${binary_type} binaries..."

  
  echo "Installing ytt..."
  $dl_bin https://github.com/carvel-dev/ytt/releases/download/v0.45.6/ytt-${binary_type} > /tmp/ytt
  echo "${ytt_checksum}  /tmp/ytt" | shasum -c -
  mv /tmp/ytt ${dst_dir}/ytt
  chmod +x ${dst_dir}/ytt
  echo "Installed ${dst_dir}/ytt v0.45.6"
  
  echo "Installing imgpkg..."
  $dl_bin https://github.com/carvel-dev/imgpkg/releases/download/v0.37.5/imgpkg-${binary_type} > /tmp/imgpkg
  echo "${imgpkg_checksum}  /tmp/imgpkg" | shasum -c -
  mv /tmp/imgpkg ${dst_dir}/imgpkg
  chmod +x ${dst_dir}/imgpkg
  echo "Installed ${dst_dir}/imgpkg v0.37.5"
  
  echo "Installing kbld..."
  $dl_bin https://github.com/carvel-dev/kbld/releases/download/v0.37.7/kbld-${binary_type} > /tmp/kbld
  echo "${kbld_checksum}  /tmp/kbld" | shasum -c -
  mv /tmp/kbld ${dst_dir}/kbld
  chmod +x ${dst_dir}/kbld
  echo "Installed ${dst_dir}/kbld v0.37.7"
  
  echo "Installing kapp..."
  $dl_bin https://github.com/carvel-dev/kapp/releases/download/v0.59.0/kapp-${binary_type} > /tmp/kapp
  echo "${kapp_checksum}  /tmp/kapp" | shasum -c -
  mv /tmp/kapp ${dst_dir}/kapp
  chmod +x ${dst_dir}/kapp
  echo "Installed ${dst_dir}/kapp v0.59.0"
  
  echo "Installing kwt..."
  $dl_bin https://github.com/carvel-dev/kwt/releases/download/v0.0.6/kwt-${binary_type} > /tmp/kwt
  echo "${kwt_checksum}  /tmp/kwt" | shasum -c -
  mv /tmp/kwt ${dst_dir}/kwt
  chmod +x ${dst_dir}/kwt
  echo "Installed ${dst_dir}/kwt v0.0.6"
  
  echo "Installing vendir..."
  $dl_bin https://github.com/carvel-dev/vendir/releases/download/v0.34.6/vendir-${binary_type} > /tmp/vendir
  echo "${vendir_checksum}  /tmp/vendir" | shasum -c -
  mv /tmp/vendir ${dst_dir}/vendir
  chmod +x ${dst_dir}/vendir
  echo "Installed ${dst_dir}/vendir v0.34.6"
  
  echo "Installing kctrl..."
  $dl_bin https://github.com/carvel-dev/kapp-controller/releases/download/v0.47.0/kctrl-${binary_type} > /tmp/kctrl
  echo "${kctrl_checksum}  /tmp/kctrl" | shasum -c -
  mv /tmp/kctrl ${dst_dir}/kctrl
  chmod +x ${dst_dir}/kctrl
  echo "Installed ${dst_dir}/kctrl v0.47.0"
  
}

install
