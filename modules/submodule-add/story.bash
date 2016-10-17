mkdir -p ~/svn-to-git-submodules/cache

module_name=$(story_var module_name)
svn_repo=$(config svn_repo)

echo git submodule add $svn_repo/$module_name $module_name && \
touch ~/svn-to-git-submodules/cache/$module_name


echo ok
