;; Install use-package for loading packages
(setq inhibit-x-resources t)
(setq debug-on-error t)
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; Load packages
(use-package ac-js2
  :ensure t
  :mode "\\.js\\'")
(use-package ace-jump-mode
  :ensure t)
(use-package alert
  :ensure t)
(use-package all-the-icons
  :ensure t)
(use-package anaconda-mode
  :ensure t
  :disabled)
(use-package anchored-transpose
  :ensure t)
(use-package async
  :ensure t)
(use-package tex
  :ensure auctex)
(use-package auto-complete
  :ensure t)
(use-package auto-complete-pcmp
  :ensure t)
(use-package biblio
  :ensure t)
(use-package biblio-core
  :ensure t)
(use-package bind-key
  :ensure t)
(use-package browse-kill-ring
  :ensure t)
(use-package company
  :ensure t)
(use-package concurrent
  :ensure t)
(use-package ctable
  :ensure t)
(use-package csv-mode
  :ensure t)
(use-package dash
  :ensure t)
(use-package deferred
  :ensure t)
(use-package docker
  :ensure t)
(use-package dictionary
  :ensure t)
(use-package diff-hl
  :ensure t)
(use-package diminish
  :ensure t)
(use-package dired+
  :ensure t)
(use-package ein
  :ensure t
  :config
  (require 'ein)
  (require 'ein-notebook)
  (require 'ein-subpackages))
(use-package elpy
  :ensure t
  :mode ("\\.py\\'" . python-mode))
(use-package engine-mode
  :ensure t)
(use-package epc
  :ensure t)
(use-package epl
  :ensure t)
(use-package ess
  :ensure t
  :init
  (require 'ess))
(use-package evil
  :ensure t)
(use-package evil-leader
  :ensure t)
(use-package evil-mc
  :ensure t)
(use-package evil-org
  :ensure t)
(use-package evil-surround
  :ensure t)
(use-package evil-tutor
  :ensure t)
(use-package eyebrowse
  :ensure t
  :config
  (eyebrowse-mode t))
(use-package f
  :ensure t)
(use-package find-file-in-project
  :ensure t)
(use-package frame-cmds
  :ensure t)
(use-package frame-fns
  :ensure t)
(use-package git-commit
  :ensure t)
(use-package git-gutter-fringe
  :ensure t)
(use-package gntp
  :ensure t)
(use-package go
  :ensure t)
(use-package goto-chg
  :ensure t)
(use-package helm
;  ;;:ensure helm-core)
  :ensure t)
(use-package helm-bibtex
  :ensure t
  :commands helm-bibtex)
;(use-package helm-dictionary
;  :ensure t)
;(use-package helm-projectile
;  :ensure t)
;(use-package helm-swoop
;  :ensure t)
(use-package interleave
  :ensure t
  :init (require 'interleave))
(use-package lorem-ipsum
  :ensure t
  :config
  (global-set-key (kbd "C-c C-l s") 'lorem-ipsum-insert-sentences)
  (global-set-key (kbd "C-c C-l p") 'lorem-ipsum-insert-paragraphs)
  (global-set-key (kbd "C-c C-l l") 'lorem-ipsum-insert-list))
(use-package magit
  :ensure t)
(use-package markdown-mode
  :ensure t)
(use-package minimap
  :ensure t)
(use-package md4rd
  :ensure t)
(use-package neotree
  :ensure t)
(use-package nlinum
  :ensure t)
(use-package nov
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode)))
(use-package org-ac
  :ensure t)
(use-package org-bookmark-heading
  :ensure t)
(use-package org-bullets
  :ensure t)
(use-package org-edit-latex
  :ensure t)
(use-package ob-ipython
  :ensure t)
(use-package org-pomodoro
  :ensure t)
(use-package org-ref
  :ensure t)
(use-package palimpsest
  :ensure t)
(use-package pdf-tools
  :ensure t
  :config
  (pdf-tools-install)
  (require 'pdf-occur))
(use-package rainbow-delimiters
  :ensure t)
(use-package realgud
  :ensure t)
(use-package smartparens
  :ensure t
  :init
  (require 'smartparens-config))
(use-package slime
  :ensure t)
;(use-package solarized-theme
;  :ensure t
;  :config
;  (setq solarized-scale-org-headlines nil)
;  (setq solarized-use-variable-pitch nil)
;  (setq solarized-height-minus-1 1.0)
;  (setq solarized-height-plus-1 1.0)
;  (setq solarized-height-plus-2 1.0)
;  (setq solarized-height-plus-3 1.0)
;  (setq solarized-height-plus-4 1.0)
;  (load-theme 'solarized-light t))
(use-package sublimity
  :ensure t
  :init
  (sublimity-mode -1))
(use-package which-key
  :ensure t
  :init
  (require 'which-key)
  (which-key-mode))
(use-package writeroom-mode
  :ensure t)
(use-package wrap-region
  :ensure t)
(use-package xkcd
  :ensure t)
(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

(org-babel-load-file "~/.emacs.d/config.org")
(put 'dired-find-alternate-file 'disabled nil)

;; Customize-variable settings
;(setq custom-file "~/.emacs.d/custom.el")
;(load custom-file) ; if desired to load
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (xkcd zenburn-theme writeroom-mode wrap-region which-key use-package sublimity solarized-theme smartparens slime realgud rainbow-delimiters palimpsest org-ref org-pomodoro org-edit-latex org-bullets org-bookmark-heading org-ac ob-ipython nov nlinum neotree minimap md4rd matlab-mode magit lorem-ipsum ledger-mode interleave helm-swoop helm-projectile helm-dictionary go gnugo git-gutter-fringe frame-cmds eyebrowse exec-path-from-shell evil-tutor evil-surround evil-org evil-mc evil-leader ess epc engine-mode elpy ein docker discover dired+ diminish diff-hl dictionary csv-mode browse-kill-ring anchored-transpose all-the-icons ace-jump-mode ac-js2))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
