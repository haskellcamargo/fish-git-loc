# SYNOPSIS
#   git-loc [options]
#
# USAGE
#   Options
#

function git-loc -d "Git lines of code"
    git ls-files | xargs wc -l | awk '{$$1=$$1}1;' | sort -t '_' -k 1n | sed -E "s/([0-9]+) (.*)/| \1 - \2/g" | column
end

