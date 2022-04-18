
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
    
    ytt_checksum=d46dba5e729e2fe36c369e96eaa2eb5354fb1bf7cf9184f9bfa829b8e5558b94
    imgpkg_checksum=e43142fdb197a62844acb29cb619d513346aac3c23732a4d180c0ad974d9562e
    kbld_checksum=181ac8be5652b54344617d90aa8e83fbb41756d1b4b99168fec85d8813b3c1b2
    kapp_checksum=7a3e5235689a9cc6d0e85ba66db3f1e57ab65323d3111e0867771111d2b0c1a3
    kwt_checksum=555d50d5bed601c2e91f7444b3f44fdc424d721d7da72955725a97f3860e2517
    vendir_checksum=6f4b3fa9be154b8a1fc82200890fd94903139a8e98ad2908b2167b84a63d3606
    kctrl_checksum=4fdd67d9c06f7ff43f9a38d1f182e01494cc62f081e3751d1d6d64da52e25ba7
  else
    binary_type=linux-amd64
    
    ytt_checksum=11222665c627b8f0a1443534a3dde3c9b3aac08b322d28e91f0e011e3aeb7df5
    imgpkg_checksum=8d22423dd6d13efc0e580443d8f88d2183c52c6f851ba51e3e54f25bf140be58
    kbld_checksum=38a5dad7ed478d209c8206d95546989b2730c7fed914c78d85eed68a2233688e
    kapp_checksum=130f648cd921761b61bb03d7a0f535d1eea26e0b5fc60e2839af73f4ea98e22f
    kwt_checksum=92a1f18be6a8dca15b7537f4cc666713b556630c20c9246b335931a9379196a0
    vendir_checksum=98057bf90e09972f156d1c4fbde350e94133bbaf2e25818b007759f5e9c8b197
    kctrl_checksum=7d2df9c83f68356d41cdc174c3baf53fdd0cc38e781c113ebfcb77d9d13ee234
  fi

  echo "Installing ${binary_type} binaries..."

  
  echo "Installing ytt..."
  $dl_bin github.com/vmware-tanzu/carvel-ytt/releases/download/v0.40.1/ytt-${binary_type} > /tmp/ytt
  echo "${ytt_checksum}  /tmp/ytt" | shasum -c -
  mv /tmp/ytt ${dst_dir}/ytt
  chmod +x ${dst_dir}/ytt
  echo "Installed ${dst_dir}/ytt v0.40.1"
  
  echo "Installing imgpkg..."
  $dl_bin github.com/vmware-tanzu/carvel-imgpkg/releases/download/v0.28.0/imgpkg-${binary_type} > /tmp/imgpkg
  echo "${imgpkg_checksum}  /tmp/imgpkg" | shasum -c -
  mv /tmp/imgpkg ${dst_dir}/imgpkg
  chmod +x ${dst_dir}/imgpkg
  echo "Installed ${dst_dir}/imgpkg v0.28.0"
  
  echo "Installing kbld..."
  $dl_bin github.com/vmware-tanzu/carvel-kbld/releases/download/v0.33.0/kbld-${binary_type} > /tmp/kbld
  echo "${kbld_checksum}  /tmp/kbld" | shasum -c -
  mv /tmp/kbld ${dst_dir}/kbld
  chmod +x ${dst_dir}/kbld
  echo "Installed ${dst_dir}/kbld v0.33.0"
  
  echo "Installing kapp..."
  $dl_bin https://github.com/vmware-tanzu/carvel-kapp/releases/download/v0.46.0/kapp-${binary_type} > /tmp/kapp
  echo "${kapp_checksum}  /tmp/kapp" | shasum -c -
  mv /tmp/kapp ${dst_dir}/kapp
  chmod +x ${dst_dir}/kapp
  echo "Installed ${dst_dir}/kapp v0.46.0"
  
  echo "Installing kwt..."
  $dl_bin https://github.com/vmware-tanzu/carvel-kwt/releases/download/v0.0.6/kwt-${binary_type} > /tmp/kwt
  echo "${kwt_checksum}  /tmp/kwt" | shasum -c -
  mv /tmp/kwt ${dst_dir}/kwt
  chmod +x ${dst_dir}/kwt
  echo "Installed ${dst_dir}/kwt v0.0.6"
  
  echo "Installing vendir..."
  $dl_bin github.com/vmware-tanzu/carvel-vendir/releases/download/v0.26.0/vendir-${binary_type} > /tmp/vendir
  echo "${vendir_checksum}  /tmp/vendir" | shasum -c -
  mv /tmp/vendir ${dst_dir}/vendir
  chmod +x ${dst_dir}/vendir
  echo "Installed ${dst_dir}/vendir v0.26.0"
  
  echo "Installing kctrl..."
  $dl_bin github.com/vmware-tanzu/carvel-kapp-controller/releases/download/v0.35.0/kctrl-${binary_type} > /tmp/kctrl
  echo "${kctrl_checksum}  /tmp/kctrl" | shasum -c -
  mv /tmp/kctrl ${dst_dir}/kctrl
  chmod +x ${dst_dir}/kctrl
  echo "Installed ${dst_dir}/kctrl v0.35.0"
  
}

install
