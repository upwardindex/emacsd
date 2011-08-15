;;
;; Modes
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
;; Paredit
;;
(autoload 'paredit-mode "paredit"
      "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook             (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook (lambda () (paredit-mode +1)))
(add-hook 'clojure-mode-hook (lambda () (paredit-mode +1)))
