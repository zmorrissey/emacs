;; Install use-package for loading packages
(setq debug-on-error t)
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; Load packages
;(use-package org
;  :ensure t)
(use-package ac-js2
  :ensure t
  :mode "\\.js\\'")             
(use-package ace-jump-mode
  :ensure t
  :disabled)      
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
(use-package dictionary
  :ensure t)
(use-package diff-hl
  :ensure t)            
(use-package diminish
  :ensure t)           
(use-package dired+
  :ensure t)             
(use-package doom-themes
  :ensure t
  :init
  (defun my/org-mode-hook ()
    (set-face-attribute 'org-level-1 nil :height 1.0 :background nil))
  (add-hook 'org-load-hook #'my/org-mode-hook))        
(use-package elpy
  :ensure t
  :mode ("\\.py\\'" . python-mode))
(use-package engine-mode
  :ensure t)        
(use-package epc
  :ensure t)                
(use-package epl
  :ensure t)                
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
(use-package f
  :ensure t)                  
(use-package find-file-in-project
  :ensure t) 
(use-package font-lock+
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
  :ensure helm-core)
;(use-package helm-core)
;  :ensure t)
(use-package helm-bibtex
  :ensure t
  :commands helm-bibtex)
(use-package helm-dictionary
  :ensure t)
(use-package helm-projectile
  :ensure t)
(use-package interleave
  :ensure t)
(use-package magit
  :ensure t)
(use-package minimap
  :ensure t)
(use-package neotree
  :ensure t)
(use-package nlinum
  :ensure t)
(use-package org-ac
  :ensure t)
(use-package org-bookmark-heading
  :ensure t)
(use-package org-bullets
  :ensure t)
(use-package org-edit-latex
  :ensure t)
(use-package org-pomodoro
  :ensure t)
(use-package org-ref
  :ensure t)
(use-package pdf-tools
  :ensure t)
(use-package rainbow-delimiters
  :ensure t)
(use-package realgud
  :ensure t)
(use-package smartparens
  :ensure t
  :init
  (require 'smartparens-config))
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
(use-package zenburn-theme
  :ensure t)

(org-babel-load-file "~/.emacs.d/config.org")
(put 'dired-find-alternate-file 'disabled nil)

;(defalias 'outline-show-all 'show-all) ; fix for Emacs 24

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-install-font-lock (quote font-latex-setup))
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(blink-cursor-mode nil)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#657b83")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes
   (quote
    ("5ee0a89143ede68cbbfacc18c24b6f7e5fcb89d9642d4944e17255517cc0c9c4" "d0404bd38534a00ee72a4f887a987d6bff87f4cf8d8f85149e32849b262465a5" "73e35ffa5ca98b57a9923954f296c3854ce6d8736b31fdbdda3d27502d4b4d69" "3481e594ae6866d72c40ad77d86a1ffa338d01daa9eb0977e324f365cef4f47c" "77bddca0879cb3b0ecdf071d9635c818827c57d69164291cb27268ae324efa84" "0a3a41085c19d8121ed0ad3eb658a475ccb948a70a83604641ee7d4c3575a4d5" "a7e7804313dbf827a441c86a8109ef5b64b03011383322cbdbf646eb02692f76" "6be42070d23e832a7493166f90e9bb08af348a818ec18389c1f21d33542771af" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" default)))
 '(desktop-save-mode nil)
 '(fci-rule-color "#383838")
 '(fringe-mode nil nil (fringe))
 '(global hl-line-mode t)
 '(gud-tooltip-mode t)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#fdf6e3" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#586e75")
 '(highlight-tail-colors
   (quote
    (("#eee8d5" . 0)
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(inhibit-startup-screen nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(org-agenda-files
   (quote
    ("~/UIC/Logistics/grad-school.org" "~/Lab/Notebook/leow-lab.org" "~/Documents/Personal/personal.org")))
 '(org-file-apps
   (quote
    ((auto-mode . emacs)
     ("\\.mm\\'" . default)
     ("\\.x?html?\\'" . default)
     ("\\.pdf\\' . \"okular %s\"" . default))))
 '(org-fontify-done-headline t)
 '(org-fontify-quote-and-verse-blocks t)
 '(org-fontify-whole-heading-line t)
 '(package-selected-packages
   (quote
    (realgud writeroom-mode ox-reveal git-gutter-fringe minimap neotree solarized-theme zenburn-theme magit dictionary helm-dictionary discover elpy yasnippet which-key use-package smartparens rainbow-delimiters pyvenv org-ref org-pomodoro org-edit-latex org-bullets org-bookmark-heading org-ac nlinum matlab-mode ledger-mode interleave highlight-indentation helm-projectile go gnugo git-commit frame-cmds find-file-in-project exec-path-from-shell evil-tutor evil-surround evil-org evil-mc evil-leader epc engine-mode doom-themes dired+ diminish diff-hl csv-mode company browse-kill-ring anchored-transpose ac-js2)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(scroll-bar-mode nil)
 '(smartparens-global-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(xterm-color-names
   ["#eee8d5" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#073642"])
 '(xterm-color-names-bright
   ["#fdf6e3" "#cb4b16" "#93a1a1" "#839496" "#657b83" "#6c71c4" "#586e75" "#002b36"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "#DCDCCC" :background "#3F3F3F"))))
 '(cursor ((t (:background "turquoise1"))))
 '(fringe ((t (:inherit default))))
 '(linum ((t (:inherit default))))
 '(preview-reference-face ((t (:foreground "white smoke")))))
