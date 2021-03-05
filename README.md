# Configuration files

This repository contains my configuration files, which are managed with
GNU Stow. It also contains some setup scripts to help install various
common softwares on new systems.

## Installation

These configuration files are written to be installed with GNU Stow. The
`setup.sh` script is POSIX script to perform the full installation on a
new system. The script mostly just runs a collection of scripts for
individual softwares, which can be modified and run individually, if
necessary.

## Version Control

The `main` branch contains the configuration common to all
environments. Environments which require specific configuration have
their own branch in the repository.

The expectation is that *common* changes are made on `main` and each
environment-specific branch `rebases` off of that. *Hopefully,* this
`rebase` strategy isn't an issue, since, while the environment-specific
branches are on the remote, they should be maintained on a per-machine
basis. Obviously, there is a significant possibility I have to update
this machine-specific-configuration-strategy in the future.
