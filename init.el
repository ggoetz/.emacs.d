;;; init.el --- Emacs configuration file.
;; author: Georges Goetz - ggoetz@stanford.edu

;;; Commentary:
;; Emacs configuration file.
;; Sets up emacs:
;;   - to have on-the-fly syntax checking with flycheck.
;;   - for Haskell development
;;   - for Python development
;;   - configures org-mode

;;; Code:
;; -------------------------------------------------------------------------- ;;

;; Basic settings first

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(virtualenv-root "~/Research/Vision/Stanford/vision9/env/"))

; Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'zenburn t)

; Turn on line numbers for programming mode
(add-hook 'prog-mode-hook 'linum-mode)

;;; General settings
;; -------------------------------------------------------------------------- ;;

;; Path to where setting files are kept
(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/modules")

;; Require some custom functions
(require 'custom-functions)

;; Load general settings
(require 'general-settings)

;; A couple more repositories
(require 'package)
;; TODO: change to https
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
			 ("elpy" . "http://jorgenschaefer.github.io/packages/")))

;; Turn on TLS trust checking
;; TODO: see how to do here:
;; https://glyph.twistedmatrix.com/2015/11/editor-malware.html

(package-initialize)

;; Exec path from shell
;(when (memq window-system '(mac ns))
;  (exec-path-from-shell-initialize))

;; Save buffers on exit
;(require 'desktop)
;  (desktop-save-mode 1)
;  (defun my-desktop-save ()
;    (interactive)
;    ;; Don't call desktop-save-in-desktop-dir, as it prints a message.
;    (if (eq (desktop-owner) (emacs-pid))
;        (desktop-save desktop-dirname)))
;  (add-hook 'auto-save-hook 'my-desktop-save)

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))
(el-get 'sync)

;; Disable Command+Q on OSX
(if (system-is-mac)
    (setq ns-command-modifier 'meta)
)

;;; Utilities
;; -------------------------------------------------------------------------- ;;

;; Flycheck
(require 'flycheck-settings)

;; Auto-complete
(require 'autocomplete-settings)

;;; Modes
;; -------------------------------------------------------------------------- ;;

;; Ido mode
(require 'ido)
(ido-mode t)

;; Haskell
(require 'haskell-settings)

;; Python
(require 'python-settings)

;; Org-mode
(require 'org-settings)

;; Markdown-mode
(require 'markdown-settings)

;; Latex-mode
(require 'latex-settings)

;; -------------------------------------------------------------------------- ;;

(provide 'init.el)
;;; init.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
