;;; flymake-d-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "flymake-d" "flymake-d.el" (23741 53150 365625
;;;;;;  887000))
;;; Generated autoloads from flymake-d.el

(autoload 'flymake-d-load "flymake-d" "\
Configure flymake mode to check the current buffer's D syntax

This function is designed to be called in `d-mode-hook'; it
does not alter flymake's global configuration, so function
`flymake-mode' alone will not suffice.

\(fn)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; flymake-d-autoloads.el ends here
