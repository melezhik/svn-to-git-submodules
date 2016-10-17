# SYNOPSIS

Generate git submodules entries based on output from `svn list` command.

# Description


This plugins generates a git submodules entries based on `svn list` command output.

# INSTALL

    $ sparrow plg install svn-to-git-submodules

# USAGE

    $ sparrow plg run svn-to-git-submodules \
    --param svn_repo=http://svn-repository/projects/list \
    --param outdir=/path/to/directory/with/git/repo

# Parameters 

## svn_repo

This should svn repo URL to return a list of directories. Obligatory. No default value.

## outdir

This should be location of local Git repository, where `.gitmodules` file located. Obligatory.
No default value.

# See also

[git-submodule](https://git-scm.com/docs/git-submodule)

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

