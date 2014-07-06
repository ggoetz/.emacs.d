;;; org-settings --- Org mode settings

;;; Commentary:
; Org mode settings.

;;; Code:

(require 'org)
(define-key mode-specific-map "\C-cl" 'org-store-link)
(define-key mode-specific-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; Set up org-mode agenda
(setq org-agenda-files (list "~/org/lab.org"
                             "~/org/home.org"
                             ))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

(provide 'org-settings)
;;; org-settings ends here
