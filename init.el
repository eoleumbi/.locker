;; init.el --- Emacs configuration
;; --------------------------------------
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Bootstrap 'use-package'
;; --------------------------------------
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; Don't ask to follow symblinks on init
(setq vc-follow-symlinks t)

;; init.el.org
;; --------------------------------------
(require 'org)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "~/.emacs.d/init.el.org"))

;; https://emacs.stackexchange.com/questions/21394/how-can-i-change-where-the-customize-puts-custom-set-variables
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; revert to default after init
(setq vc-follow-symlinks (quote ask))
