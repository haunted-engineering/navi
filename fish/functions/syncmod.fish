function syncmod
git submodule init
git submodule sync
git submodule update --recursive --remote
end
