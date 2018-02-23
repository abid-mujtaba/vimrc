" Mappings when using Urdu in Vim:
"
" Using جک to leave insert mode and enter normal (command) mode just as 'jk' does in English layout
"
inoremap جک <Esc>
"
"
" Mapping Urdu س to English s for substituion
"
nmap :س :s
vmap :س :s
"
"
" Mapping Urdu و to English w for writing the file
"
nmap :و :w
"
"
" Various mappings to emulate normal-mode keys while using Urdu
"
nnoremap ی i
nnoremap ِ I

nnoremap د d

nnoremap گ g
nnoremap غ G

nnoremap ا a
nnoremap آ A

"nnoremap 4 $
"nnoremap 6 ^

nnoremap ب b
nnoremap ع e
nnoremap و w

nnoremap ج j
nnoremap ح h
nnoremap ک k
nnoremap ل l

nnoremap ر r
nnoremap ڑ R

nnoremap ہ o
nnoremap ۃ O

nnoremap پ p

nnoremap ش x
