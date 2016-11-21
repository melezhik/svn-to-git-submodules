mkdir -p ~/svn-to-git-submodules/cache

module_name=$(story_var module_name)
git_repo=$(config git_repo)
local_dir=$(config outdir)

echo git submodule add $git_repo/$module_name.git $module_name ...

cd $local_dir && \

git submodule add $git_repo/$module_name.git $module_name && git commit -a -m "add new submodule $module_name"

touch ~/svn-to-git-submodules/cache/$module_name

echo "'"$module_name"'" added

