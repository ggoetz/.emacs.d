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
 '(inhibit-startup-screen t)
 )

;; Never use tabs
(setq-default indent-tabs-mode nil)

;; Line-column mode by default
(setq column-number-mode t)

;;; Custom repositories, paths
;; -------------------------------------------------------------------------- ;;

;; A couple more repositories
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; Exec path from shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Path to where setting files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;;; Utilities
;; -------------------------------------------------------------------------- ;;

;; Flycheck
(require 'flycheck-settings)

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

;; -------------------------------------------------------------------------- ;;

(provide 'init.el)
;;; init.el ends here
