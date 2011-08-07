;; -*- mode: emacs-lisp -*-
;;
;; Emacs configuration file
;;
;; Time-stamp: <2011-08-07 12:09:42 jsabeaudry>
;;

;;
;; Emacs startup
;;
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)


;Enable line and column numbering
(line-number-mode 1) 
(column-number-mode 1) 

;Disable beep and enable visible bell
(setq visible-bell t) 

;Update Timestamp: <> or "" in first 8 lines before every save
(add-hook 'before-save-hook 'time-stamp) 

(setq
 time-stamp-active t
 time-stamp-warn-inactive t
 backup-by-copying t
 backup-directory-alist '(("." . "~/.saves"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

(setq 
 use-dialog-box nil
 use-file-dialog nil)

;;
;; Mode
;;

;; Enable ido
(require 'ido)
(ido-mode t)

;; Org-mode
(setq org-log-done t)
(add-hook 'org-mode-hook
          (lambda ()
            (define-key org-mode-map (kbd "C-c l") 'org-store-link)
            (define-key org-mode-map (kbd "C-c a") 'org-agenda)
            (define-key org-mode-map (kbd "C-c b") 'org-iswitchb)))

;Add asdf package files ".asd" lisp mode
(add-to-list 'auto-mode-alist '("\\.asd\\'" . lisp-mode))

;; nXml
(add-to-list
 'auto-mode-alist
 (cons (concat "\\." 
               (regexp-opt '("xml" "xsd" "sch" "rng" "xslt" "svg" "rss") t) 
               "\\'")
       'nxml-mode))

;;
;;Load and config slime
;;

;; load slime:
(setq load-path (cons "~/slime" load-path))
(set-language-environment "UTF-8")
(setq slime-net-coding-system 'utf-8-unix)
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(require 'slime)
(slime-setup '(slime-fancy slime-tramp slime-asdf))

(setq lisp-indent-function 'common-lisp-indent-function)

(define-key slime-mode-map [(return)] 'paredit-newline)

;;
;; Paredit
;;
(autoload 'paredit-mode "paredit"
      "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook             (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))

;;Custom stuff changed using emacs
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode nil)
 '(ecb-options-version "2.40")
 '(ns-pop-up-frames nil)
 '(org-agenda-files (quote ("~/org/life.org")))
 '(safe-local-variable-values (quote ((TeX-master . \.\./examples/beamerexample1\.tex))))
 '(slime-complete-symbol-function (quote slime-fuzzy-complete-symbol))
 '(truncate-partial-width-windows nil))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;(unless (zenburn-format-spec-works-p)
 ; (zenburn-define-format-spec))
