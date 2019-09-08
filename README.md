# vimcake
My personnal vim config package

# How to install
Use the following command in a terminal:
```shell
make install
```
It will erase your current vim config (.vim and .vimrc).

If you don't have configured vim, this package is safe to use (in other words, you don't have a .vimrc).

# Plugins list:
- vim-plug
- vim-airline
- vim-airline-themes
- vim-monokai
- vim-colors-solarized
- colorizer
- nerdtree
- ultisnips
- vim-snippets
- vim-42header 

# Show the files explorer:
Press _\<Ctrl\>+\<n\>_ inside vim to open/close NERDTree.

NERDTree is open by default if you start vim while loading a directory.

# Autocompletion:
Use Tabs! For example, if you type in a c file:
```c
if
```
And then you press _\<Tab\>_, it'll load a snippet and move your cursor in the condition field:
```c
if ()
{
  
}
```
Now you can add a condition:
```c
if (1 && 0)
{
  
}
```
Press _\<Tab\>_ again to move your cursor to the next field (inside brackets in this case):
```c
if (1 && 0)
{
  // your cursor will be moved here like magic
}
```
It works with:
- if -> if _\<Tab\>_
- else -> else _\<Tab\>_
- while -> while _\<Tab\>_
- include -> inc _\<Tab\>_
- main -> main _\<Tab\>_ (with arguments) or mainn _\<Tab\>_ (without arguments)

... and more!

# Folding

Press _\<F3\>_ to fold/unfold your code

# 42 Header
42 Header can be added to your files by pressing _\<F2\>_.

Username and mail can be edited in your ~/.vimrc (Section \<Plugins config\>).

# User Interface
_monokai_ is the current theme used (custom) and airline-theme is set as _dark_
