;;; latex-settings --- Emacs setting for latex editing

;;; Commentary:

;;; Code:

; Enable column indicator
(add-hook 'latex-mode-hook 'fci-mode)

;; Spellcheck: use flycheck
(add-hook 'latex-mode-hook 'turn-on-flyspell 'append)

(provide 'latex-settings)
;;; latex-settings ends here
