nnoremap <leader>m4 :!m4 % > $(basename -s .m4 %)<CR>
" nnoremap <leader>mj4 :!m4 % \| prettier --parser "babel-ts" > $(basename -s .m4 %)<CR>
nnoremap <leader>mj4 :!f=$(basename -s .m4 %) && m4 % > $f && prettier --write $f<CR>
