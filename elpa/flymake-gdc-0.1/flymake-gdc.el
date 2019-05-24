;;; flymake-gdc.el --- A flymake handler for d-mode files using a non-proprietary compiler.
;; Copyright (C) 2015 Koz Ross

;; Author: Koz Ross <koz.ross@runbox.com>
;; Maintainer: Koz Ross <koz.ross@runbox.com>
;; URL: https://notabug.org/koz.ross/flymake-gdc
;; Created: 27th July 2015
;; Version: 0.1
;; Keywords: flymake, d-mode, d, gdc
;; Package-Requires: ((flymake "0.3"))

;; Copyright (C) 2015  Koz Ross

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;; Usage:
;;   (require 'flymake-gdc)
;;   (add-hook 'd-mode-hook 'flymake-gdc-load)
;;

;;; Code:

(require 'flymake)

(defconst flymake-gdc-err-line-patterns '(("^\\(.*\\)(\\([0-9]+\\)): \\(.*\\)$" 1 2 nil 3)))

(defvar flymake-gdc-executable "gdmd"
  "The D executable to use for syntax checking.")

;; Invoke gdmd with -o- to not generate object files
(defun flymake-gdc-init ()
  "Construct a command that flymake can use to check D source."
  (list flymake-gdc-executable
	(list "-o-" (flymake-init-create-temp-buffer-copy
		     'flymake-create-temp-inplace))))

;;;###autoload
(defun flymake-gdc-load ()
  "Configure flymake mode to check the current buffer's D syntax

This function is designed to be called in `d-mode-hook'; it
does not alter flymake's global configuration, so function
`flymake-mode' alone will not suffice."
  (interactive)
  (set (make-local-variable 'flymake-allowed-file-name-masks) '(("." flymake-gdc-init)))
  (set (make-local-variable 'flymake-err-line-patterns) flymake-d-err-line-patterns)
  (if (executable-find flymake-gdc-executable)
      (flymake-mode t)
    (message "Not enabling flymake: '%' command not found" flymake-d-executable)))


(provide 'flymake-gdc)
;;; flymake-gdc.el ends here
