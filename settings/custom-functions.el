;;; custom-functions --- Utilities for configuring emacs

;;; Commentary:

;;; Code:

(defun system-is-mac ()
  (interactive)
  (string-equal system-type "darwin"))

(defun system-is-linux ()
  (interactive)
  (string-equal system-type "gnu/linux"))

(provide 'custom-functions)
;;; custom-functions ends here
