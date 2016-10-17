# SYNOPSIS

Generate git submodules entries based on output from `svn list` command.

# Description


This plugins generates a git submodules entries based on `svn list` command output.

# INSTALL

    $ sparrow plg install svn-to-git-submodules

# USAGE

    $ sparrow plg run svn-to-git-submodules \
    --param svn_repo=http://svn-repository/projects/list \
    --param git_repo=http://git-repo/projects \
    --param outdir=/path/to/directory/with/git/repo

# Parameters 

## svn_repo

This should svn repo URL to return a list of directories. Obligatory. No default value.

## git_repo

This should git repo URL. Obligatory. No default value. 

A submodule will be cloned from `git_repo` as :

    git submodule add $git_repo/$directory.git

Where `$directory` is a name of directory in list fetched by 

    svn list $svn_url

command.

## outdir

This should be location of local Git repository, where `.gitmodules` file located. Obligatory.
No default value.

# See also

[git-submodule](https://git-scm.com/docs/git-submodule)

# Author

[Alexey Melezhik](mailto:melezhik@gmail.com)

