git_ppa (chef cookbook)
===========

[![Build Status](https://travis-ci.org/pseudomuto/git_ppa.png?branch=master)](https://travis-ci.org/pseudomuto/git_ppa)

Installs git from PPA. This is useful when you want to have a recent version of git installed on Ubuntu systems. At the time of written the built-in package sources only had git 1.7.9.

This cookbook will install the latest stable package from <https://launchpad.net/~git-core/+archive/ppa>.

Requirements
============

```
supports 'ubuntu'
depends  'apt'
```

This cookbook has been tested on Ubuntu Precise (12.04 LTS). Likely it will working on other versions as well.

Usage
=====

Add `recipe[git_ppa]` to your run_list.

