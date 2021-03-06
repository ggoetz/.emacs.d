# Emacs config file 

This is my emacs configuration file.

## General requirements

This emacs configuration requires el-get. 
To install, evaluate the following command from the scratch buffer (``C-j``): 

```lisp
(url-retrieve
  "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
  (lambda (s)
  (let (el-get-master-branch)
    (goto-char (point-max))
    (eval-print-last-sexp))))
```
Other modules installed include:
* ``fill-column-indicator``
* ``markdown-mode``

## Python settings

I use elpy:
https://github.com/jorgenschaefer/elpy
The use of virtualenv.el is also recommended in order to properly integrate
with python virtual environments.

Use ``exec-path-from-shell`` package to use system ``PATH`` instead of default
path, in order to use elpy in combination with anaconda python for example.

## Org-mode settings

Flycheck requires ``aspell`` to be installed in order to provide spellcheck
capabilities.

## Markdown-mode settings

Flycheck requires ``aspell`` to be installed in order to provide spellcheck
capabilities.
