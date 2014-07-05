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

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 )

;; Never use tabs
(setq-default indent-tabs-mode nil)

;;; Custom repositories
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; Exec path from shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;;; Haskell mode --- configure emacs for haskell development

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

;; hslint on the command line only likes this indentation mode;
;; alternatives commented out below.
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;; Ignore compiled Haskell files in filename completions
(add-to-list 'completion-ignored-extensions ".hi")

;; End Haskell-specific instructions

;;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;;; Org-mode


(provide 'init.el)
;;; init.el ends here
