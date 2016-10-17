module_name=$(story_var module_name)
svn_repo=$(config svn_repo)

echo git submodule add $svn_repo/$module_name $module_name

echo ok
