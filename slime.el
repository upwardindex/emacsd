;;
;; Load and config slime
;;

;; load slime:
(setq load-path (cons "~/dev/slime" load-path))
(set-language-environment "UTF-8")
(setq slime-net-coding-system 'utf-8-unix)
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(require 'slime)
(slime-setup '(slime-fancy slime-tramp slime-asdf))

(setq lisp-indent-function 'common-lisp-indent-function)

(define-key slime-mode-map [(return)] 'paredit-newline)
