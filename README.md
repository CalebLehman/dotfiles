# Configuration files

My configuration files, to be installed with GNU Stow

# Installation

These configuration files are written to be installed with GNU Stow. The
`setup.sh` script is POSIX script to perform the full installation on a
new system. You can inspect the script and make manual installations
accordingly, if you so desire.

# Version Control

The `master` branch contains the configuration common to all
environments. Environments which require specific configuration have
their own branch in the repository.

The expectation is that *common* changes are made on `master` and each
environment-specific branch `rebases` off of that. *Hopefully,* this
`rebase` strategy isn't an issue, since, while the environment-specific
branches are on the remote, they should be maintained on a per-machine
basis. Obviously, there is a significant possibility I have to update
this machine-specific-configuration-strategy in the future.
