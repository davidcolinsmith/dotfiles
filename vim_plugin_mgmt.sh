# From https://shapeshed.com/vim-packages/

function install_vim_plugin {
# Inputs:
# $1: plugin git project name
# $2: plugin type (existing subfolder in vim/pack/)
# $3: optional (start|opt) auto-load plugin or on-demand, defaults to "start"
  plugin=$1
  type=$2 # needs to be "look", "syntax", or "function"
  if [ -z ${2+x} ]; then load=start; else load=$2; fi # default to "start"
  echo "installing ${1}"
  git submodule init
  git submodule add https://github.com/$1/$1.git vim/pack/$type/$load/$1
  git add vim/pack/$type/$load/$1
  git commit -am "adding vim plugin $plugin"
}

# Update plugin
# git submodule update --remote --merge
# git commit

# Remove plugin
# git submodule deinit vim/pack/[look|syntax|function]/[start|opt]/fancy-plugin
# git rm vim/pack/[look|syntax|function]/[start|opt]/fancy-plugin
# rm -rf vim/pack/[look|syntax|function]/[start|opt]/fancy-plugin
# git commit
