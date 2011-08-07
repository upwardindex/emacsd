;;
;; Emacs appearance related settings
;;

;Some UI preferences
(setq default-frame-alist '((vertical-scroll-bars . right)))

;Highlight selections
(transient-mark-mode t) 

;Highlight matching parenthesis
(show-paren-mode 1)
(set-face-background 'show-paren-match-face (face-background 'default))
(set-face-foreground 'show-paren-match-face "#def")
(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)

;Highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#222")

;Color-theme;
(load-user-file "color-theme-zenburn.el")
(color-theme-zenburn)
