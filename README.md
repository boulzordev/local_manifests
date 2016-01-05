This is the changes required for working with CAF LA.BR.1.2.7-00110-8x16.0 and msm8916 surnia/osprey/lux

mkdir ~/android/caf-6.0
cd ~/android/caf-6.0
repo init -u git://codeaurora.org/platform/manifest.git -b release -m LA.BR.1.2.7-00110-8x16.0.xml
cd .repo/
git clone https://github.com/boulzordev/local_manifests.git
cd ~/android/caf-6.0
repo sync -j8
