if not functions -q fundle; eval (curl -sfL https://git.io/fundle-install); end

fundle plugin 'edc/bass'
fundle init

set -xg LSCOLORS gxBxhxDxfxhxhxhxhxcxcx

function nvm
    bass source ~/.nvm/nvm.sh ';' nvm $argv
end

nvm use current > /dev/null
