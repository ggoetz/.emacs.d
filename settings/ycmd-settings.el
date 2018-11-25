;;; ycmd-settings.el --- backend for company-mode

;;; Commentary:
;;; YouCompleteMe settings

;;; Code:

(require 'ycmd)
(require 'company-ycmd)
(require 'flycheck-ycmd)

(setq ycmd-server-command
      (list "/usr/local/bin/python3" "-u"
	    (file-truename "~/.emacs.d/addons/YouCompleteMe/third_party/ycmd/ycmd/")))
(setq ycmd-startup-timeout 5)
(add-hook 'ycmd-mode-hook #'company-ycmd-setup)
(add-hook 'ycmd-mode-hook #'flycheck-ycmd-setup)
(add-hook 'c++-mode-hook 'ycmd-mode)

;; Use ycmd as the backend for flyckeck
(flycheck-ycmd-setup)

(provide 'ycmd-settings)

;;; ycmd-settings ends here
