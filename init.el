;;
;; Emacs initialization file
;;
;; Timestamp: <>
;;
;; Should normally be at ~/.emacs.d/init.el
;;

(defconst user-init-dir
  (cond ((boundp 'user-emacs-directory)
         user-emacs-directory)
        ((boundp 'user-init-directory)
         user-init-directory)
        (t "~/.emacs.d/")))

(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file user-init-dir)))

(setq load-path (cons user-init-dir load-path))

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))


(load-user-file "base.el")
(load-user-file "appearance.el")
(load-user-file "code.el")
(load-user-file "modes.el")
;(load-user-file "slimecfg.el")

