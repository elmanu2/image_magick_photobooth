#!/usr/bin/env python

import pip
installed_packages = pip.get_installed_distributions()
installed_packages_list = sorted(["%s==%s" % (i.key, i.version)
     for i in installed_packages])

for package_name in installed_packages_list:
    print package_name
