;;; general-settings --- General Emacs settings

;;; Commentary:

;;; Code:

; set PATH
; function from https://gist.github.com/jakemcc/3887459
(defun set-exec-path-from-shell-PATH ()
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo -n $PATH'")))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))
(if window-system (set-exec-path-from-shell-PATH))

; Do not show the startup screen
(setq inhibit-startup-screen t)
; Do not show the tool bar
(require 'tool-bar)
(tool-bar-mode 0)
; Do not show the scroll bar
(if window-system (scroll-bar-mode 0))
; Column marker mode. 
; Add hook to major mode when you want to turn it on (see python-settings.el)
(require 'fill-column-indicator)
(setq fci-rule-column 80)

; Turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode t)

; Never use tabs
(setq-default indent-tabs-mode 0)

; Line-column mode by default
(setq column-number-mode t)

; Don't wrap around lines of text
(setq-default truncate-lines t)
; Even in partial windows!
(setq truncate-partial-width-windows t)

; Default window width and height
(defun custom-set-frame-size ()
  (add-to-list 'default-frame-alist '(height . 53))
  (add-to-list 'default-frame-alist '(width . 100)))
(custom-set-frame-size)
(add-hook 'before-make-frame-hook 'custom-set-frame-size)

(provide 'general-settings)
;;; general-settings ends here
