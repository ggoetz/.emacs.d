;;; haskell-settings --- provides setting for Haskell programming

;;; Commentary:
; Basic setting for setting up Emacs as a Haskell programming environment

;;; Code:

;;; The below turns on haskell-mode. Intero is the other option.
;;; Comment one out in favor of the other as needed

;; (Add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

;;; hslint on the command line only likes this indentation mode;
;;; alternatives commented out below.
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)  ;; Turn this one back on
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;;; The below activates intero
;; Install Intero
(package-install 'intero)
(add-hook 'haskell-mode-hook 'intero-mode)

;; Ignore compiled Haskell files in filename completions
(add-to-list 'completion-ignored-extensions ".hi")

(provide 'haskell-settings)
;;; haskell-settings ends here
