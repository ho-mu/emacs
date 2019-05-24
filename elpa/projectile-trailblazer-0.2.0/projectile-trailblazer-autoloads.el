;;; projectile-trailblazer-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "projectile-trailblazer" "projectile-trailblazer.el"
;;;;;;  (23784 11466 366925 868000))
;;; Generated autoloads from projectile-trailblazer.el

(autoload 'projectile-trailblazer-mode "projectile-trailblazer" "\
Rails trailblazer mode based on projectile-rails

\(fn &optional ARG)" t nil)

(defvar projectile-trailblazer-global-mode nil "\
Non-nil if Projectile-Trailblazer-Global mode is enabled.
See the `projectile-trailblazer-global-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `projectile-trailblazer-global-mode'.")

(custom-autoload 'projectile-trailblazer-global-mode "projectile-trailblazer" nil)

(autoload 'projectile-trailblazer-global-mode "projectile-trailblazer" "\
Toggle Projectile-Trailblazer mode in all buffers.
With prefix ARG, enable Projectile-Trailblazer-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Projectile-Trailblazer mode is enabled in all buffers where
`projectile-trailblazer-on' would do it.
See `projectile-trailblazer-mode' for more information on Projectile-Trailblazer mode.

\(fn &optional ARG)" t nil)

(autoload 'projectile-trailblazer-on "projectile-trailblazer" "\
Enable variable `projectile-trailblazer-mode' if this is a rails project.

\(fn)" nil nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; projectile-trailblazer-autoloads.el ends here
