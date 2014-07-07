;;; python-settings --- setting for Python development

;;; Commentary:

;;; Code:

; Enable elpy mode
(package-initialize)
(elpy-enable)

; Use iPython as default interpreter
(elpy-use-ipython)

(provide 'python-settings)
;;; python-settings.el ends here
