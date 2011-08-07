;;
;; Code related config
;;

;Code style
(setq c-default-style "bsd")
(setq c-basic-offset 3)
(setq-default indent-tabs-mode nil)
(setq tab-width 3)
(add-hook 'c-mode-common-hook 
          '(lambda ()
            (local-set-key (kbd "RET") 'newline-and-indent)))


;Use spaces not tabs
(setq-default indent-tabs-mode nil) 
