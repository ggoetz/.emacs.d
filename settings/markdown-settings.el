;;; markdown-settings --- Emacs setting for markdown editing

;;; Commentary:

;;; Code:

(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (append
       (list '("\\.text" . markdown-mode)
             '("\\.md" . markdown-mode)
             '("\\.markdown" . markdown-mode)
             )
       auto-mode-alist))

(provide 'markdown-settings)
;;; markdown-settings ends here
