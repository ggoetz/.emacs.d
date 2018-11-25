;;; org-settings --- Org mode settings

;;; Commentary:
; Org mode settings.

;;; Code:

(require 'org)
(define-key mode-specific-map "\C-cl" 'org-store-link)
(define-key mode-specific-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; Set up org-mode agenda
(setq org-agenda-files (list "~/Dropbox/Org/lab/administratif.org"
			     "~/Dropbox/Org/lab/imaging.org"
			     "~/Dropbox/Org/lab/misc-general.org"
			     "~/Dropbox/Org/lab/misc-signalproc.org"
			     "~/Dropbox/Org/lab/monkey-coding.org"
			     "~/Dropbox/Org/lab/prosthesis.org"
			     "~/Dropbox/Org/lab/publication.org"
			     "~/Dropbox/Org/lab/rt-spikesorting.org"
                             ))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

;; Activate column indicator
(add-hook 'org-mode-hook 'fci-mode)

;; Spellcheck: use flycheck
(add-hook 'org-mode-hook 'turn-on-flyspell 'append)

;; Add latex to path
(setenv "PATH" (concat (getenv "PATH") ":/usr/texbin"))
(setq exec-path (append exec-path '("/usr/texbin")))

;; Set up org mode to use python
(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(provide 'org-settings)
;;; org-settings ends here
