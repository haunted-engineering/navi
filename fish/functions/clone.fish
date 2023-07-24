## A function that does shorthand for git clone.
#
# instead of typing git clone https://github.com/<name>/<repo>,
# you can type swoop <name>/<repo> [--throw <dir>]
#

function clone
    if [ (count $argv) -eq 0 ]
        echo "Usage: clone <name>/<repo> [--throw <dir>]"
        return 1
    end

    set user (echo $argv[1] | cut -d/ -f1)
    set repo (echo $argv[1] | cut -d/ -f2)

    ## check if the user has specified a directory to clone into with --throw
    if [ (count $argv) -eq 3 ]
        set dir $argv[3]
    else
        set dir $repo
    end

    set url "https://github.com/$user/$repo"
    git clone $url $dir
end

