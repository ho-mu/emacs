;; javascript / html


(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
;;(add-hook 'js-mode-hook 'subword-mode)
;;(add-hook 'html-mode-hook 'subword-mode)
;;(add-hook 'js2-jsx-mode-hook 'prettier-js-mode)
;;(add-hook 'web-mode-hook 'prettier-js-mode)
;;(add-hook 'js-mode-hook 'prettier-js-mode)

(require 'prettier-js)

;; add hooks
(add-hook 'js2-mode-hook 'prettier-js-mode)

(setq prettier-js-args '(
      "--tab-width" "2"
      "--no-semi" "true"
      "--single-quote" "false"))

(setq js2-basic-offset 2)
(setq js-indent-level 2)

(electric-pair-mode 1)
(setq electric-pair-preserve-balance nil)

(setq company-tooltip-align-annotations t)

(eval-after-load "sgml-mode"
  '(progn
     (require 'tagedit)
     (tagedit-add-paredit-like-keybindings)
     (add-hook 'html-mode-hook (lambda () (tagedit-mode 1)))))

;; jsx
(add-to-list 'auto-mode-alist '("\\.jsx$" . rjsx-mode))
(add-hook 'rjsx-mode 'prettier-js-mode)

;; html
(add-hook 'html-mode-hook 'subword-mode)
(eval-after-load "sgml-mode"
  '(progn
     (require 'tagedit)
     (tagedit-add-paredit-like-keybindings)
     (add-hook 'html-mode-hook (lambda () (tagedit-mode 1)))))

;; coffeescript
(add-to-list 'auto-mode-alist '("\\.coffee.erb$" . coffee-mode))
(add-hook 'coffee-mode-hook 'subword-mode)
(add-hook 'coffee-mode-hook 'highlight-indentation-current-column-mode)
(add-hook 'coffee-mode-hook
          (defun coffee-mode-newline-and-indent ()
            (define-key coffee-mode-map "\C-j" 'coffee-newline-and-indent)
            (setq coffee-cleanup-whitespace nil)))
(custom-set-variables
 '(coffee-tab-width 2))
