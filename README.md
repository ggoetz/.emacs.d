Emacs config file 
=================

This is my emacs configuration file.
It requires el-get. To install, evaluate the following command from the 
scratch buffer (C-j): 

(url-retrieve
 "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
 (lambda (s)
   (let (el-get-master-branch)
     (goto-char (point-max))
     (eval-print-last-sexp))))