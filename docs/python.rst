PIP
---
# upgrade Ubuntu 14.04 PIP if having issues
easy_install -U pip

# if packages are failing, clean out the temp PIP Dir
rm -rf /tmp/pip_build_root/*