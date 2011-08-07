;; -*- mode: emacs-lisp -*-
;;
;; Emacs configuration file
;;
;; Time-stamp: <2011-08-07 12:39:40 jsabeaudry>
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


;;Custom stuff changed using emacs
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/life.org")))
 '(safe-local-variable-values (quote ((TeX-master . \.\./examples/beamerexample1\.tex))))
 '(slime-complete-symbol-function (quote slime-fuzzy-complete-symbol))
 '(truncate-partial-width-windows nil))


