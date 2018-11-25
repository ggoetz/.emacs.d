;;; python-settings --- setting for Python development

;;; Commentary:

;;; Code:

; Enable elpy mode
(package-initialize)

;; Make sure to load $PATH from .bashrc for anaconda python
(exec-path-from-shell-copy-env "PATH")

(elpy-enable)

; Use iPython as default interpreter
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")

; Enable column indicator
(add-hook 'python-mode-hook 'fci-mode)

(provide 'python-settings)
;;; python-settings.el ends here
