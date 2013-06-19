[![Build Status](https://travis-ci.org/RallySoftware-cookbooks/chrome.png?branch=master)](https://travis-ci.org/RallySoftware-cookbooks/chrome)

Description
===========
Installs the chrome browser

Requirements
============

Platform
--------
As of Chrome version 28, versions of RHEL prior to 7 no longer work.

As as a result, we are only able to test on Ubuntu.

Other
-----

In order to use this cookbook on RHEL 5 or 6, you'll need to provide your own repo for the google-chrome-stable package.

The yum and apt cookbooks are required.

Attributes
==========
See `attributes/default.rb` for default values.

* `node['chrome']['version']` - Specifies which channel to use for installation (dev, stable, or beta)

Recipes
=======

default
-------

Installs the chrome browser

License
=======
Copyright (c) Rally Software Development Corp. 2013
Distributed under the MIT License.
