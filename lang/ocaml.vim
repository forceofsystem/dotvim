set rtp^="/Users/zzx/.opam/default/share/ocp-indent/vim"
let g:opamshare = substitute(system('opam var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
