

This is the changes required for working with CAF $VERSION and msm8916 surnia/osprey/lux
```
VERSION=LA.BR.1.2.7-00910-8x09.0.xml
mkdir ~/android/caf-6.0
cd ~/android/caf-6.0
repo init -u git://codeaurora.org/platform/manifest.git -b release -m $VERSION
cd .repo/
git clone https://github.com/boulzordev/local_manifests.git
cd ~/android/caf-6.0
repo sync -j8
```
