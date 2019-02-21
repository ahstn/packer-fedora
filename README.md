# Packer Templates for Fedora

### Overview

This repository contains templates for Fedora that can create Vagrant boxes using Packer.

## Current Boxes

* [Fedora 29 (Headless)](https://app.vagrantup.com/ahstn/boxes/fedora-29-headless)

## Building the Vagrant Boxes

```
$ packer build                                \
  -var-file=fedora-29/headless/metadata.json  \
  -var-file=fedora-29/headless/template.json  \
  fedora-headless.json
```
