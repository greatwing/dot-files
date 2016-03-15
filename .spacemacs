;; -*- mode: emacs-lisp -*-

(defun dotspacemacs/layers ()
"Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
(setq-default
  dotspacemacs-distribution 'spacemacs
  dotspacemacs-configuration-layer-path '()
  dotspacemacs-configuration-layers '(
    gtags
    better-defaults
    (c-c++ :variables c-c++-enable-clang-support t
            c-c++-default-mode-for-headers 'c++-mode)
    (auto-completion :variables ;; auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t)
    emacs-lisp
    (spell-checking :variables spell-checking-enable-by-default nil)
    git
    unimpaired
    markdown
    selectric
    org
    eyebrowse
    search-engine
    (colors :variables colors-enable-nyan-cat-progress-bar t)
    spotify
    semantic
    (spell-checking :variables spell-checking-enable-by-default nil)
    version-control)
  dotspacemacs-additional-packages '()
  dotspacemacs-excluded-packages '(auto-complete)
  dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  (setq-default
   dotspacemacs-elpa-https t
   dotspacemacs-elpa-timeout 5
   dotspacemacs-check-for-update t
   dotspacemacs-editing-style 'vim
   dotspacemacs-verbose-loading nil
   dotspacemacs-startup-banner 'official
   dotspacemacs-startup-lists '(recents bookmarks projects)
   dotspacemacs-startup-recent-list-size 10
   dotspacemacs-scratch-mode 'text-mode
   dotspacemacs-themes '(dracula leuven)
   dotspacemacs-colorize-cursor-according-to-state t
   dotspacemacs-default-font '("Inconsolata" :size 21 :weight normal :width normal :powerline-scale 1.1)
   dotspacemacs-leader-key "SPC"
   dotspacemacs-emacs-leader-key "M-m"
   dotspacemacs-major-mode-leader-key ","
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   dotspacemacs-distinguish-gui-tab nil
   dotspacemacs-command-key ":"
   dotspacemacs-remap-Y-to-y$ t
   dotspacemacs-default-layout-name "Default"
   dotspacemacs-display-default-layout nil
   dotspacemacs-auto-resume-layouts t
   dotspacemacs-auto-save-file-location 'cache
   dotspacemacs-max-rollback-slots 5
   dotspacemacs-use-ido nil
   dotspacemacs-helm-resize t
   dotspacemacs-helm-no-header nil
   dotspacemacs-helm-position 'bottom
   dotspacemacs-enable-paste-micro-state nil
   dotspacemacs-which-key-delay 1.0
   dotspacemacs-which-key-position 'bottom
   dotspacemacs-loading-progress-bar t
   dotspacemacs-fullscreen-at-startup nil
   dotspacemacs-fullscreen-use-non-native nil
   dotspacemacs-maximized-at-startup t
   dotspacemacs-active-transparency 90
   dotspacemacs-inactive-transparency 90
   dotspacemacs-mode-line-unicode-symbols nil
   dotspacemacs-smooth-scrolling t
   dotspacemacs-line-numbers nil
   dotspacemacs-smartparens-strict-mode nil
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-persistent-server nil
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   dotspacemacs-default-package-repository nil
   dotspacemacs-whitespace-cleanup 'all
   ))

(defun hebrew-mode()
  (interactive)
  "change to r-t-l mode"
  (set-frame-font  "Sans 13"  nil t)
  (setq bidi-paragraph-direction 'right-to-left);; + C-u to set for hebrew
  )
(defun english-mode()
  (interactive)
  "change to l-t-r mode"
  (set-frame-font  "Inconsolata 17"  nil t)
  (setq bidi-paragraph-direction 'left-to-right);; + C-u to set for hebrew
  )
(defun dotspacemacs/user-init ()
  (setq-default evil-escape-delay 0.2)
  (setq-default evil-escape-key-sequence "jk")
  (setq browse-url-browser-function 'browse-url-generic browse-url-generic-program "google-chrome")
 )

(defun dotspacemacs/user-config ()
  (setq powerline-default-separator nil)
  (spacemacs/declare-prefix "]" "change-lang")
  (spacemacs/set-leader-keys "]1" 'hebrew-mode)
  (eval-after-load "org"
  '(require 'ox-gfm nil t))
  (spacemacs/set-leader-keys "]2" 'english-mode)
  (setq company-show-numbers t)
  (setq nyan-wavy-trail nil)
  (setq nyan-animate-nyancat nil)
  (global-set-key (kbd "C-<SPC>") 'company-complete)
  (with-eval-after-load 'helm-gtags
    (diminish 'helm-gtags-mode))
  (define-key global-map "\C-cc" 'org-capture)

)
;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(display-time-24hr-format t)
 '(display-time-mode t)
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
