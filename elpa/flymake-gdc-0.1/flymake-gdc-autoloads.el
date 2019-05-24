;;; flymake-gdc-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "flymake-gdc" "flymake-gdc.el" (23741 53174
;;;;;;  974255 179000))
;;; Generated autoloads from flymake-gdc.el

(autoload 'flymake-gdc-load "flymake-gdc" "\
Configure flymake mode to check the current buffer's D syntax

This function is designed to be called in `d-mode-hook'; it
does not alter flymake's global configuration, so function
`flymake-mode' alone will not suffice.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("flymake-gdc-pkg.el") (23741 53174 972845
;;;;;;  101000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; flymake-gdc-autoloads.el ends here
