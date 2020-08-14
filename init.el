
;;; package --- Main init file
;;; Commentary:
;; Emacs init file responsible for either loading a pre-compiled configuration
;; file or tangling and loading a literate org configuration file.

;; Don't attempt to find/apply special file handlers to files loaded during
;; startup.
(let ((file-name-handler-alist nil))
  ;; If config is pre-compiled, then load that
  (if (file-exists-p (expand-file-name "main.elc" user-emacs-directory))
      (load-file (expand-file-name "main.elc" user-emacs-directory))
    ;; Otherwise use org-babel to tangle and load the configuration
    (require 'org)
    (org-babel-load-file (expand-file-name "main.org" user-emacs-directory))))
(defvar myPackages
  '(better-defaults
    elpy ;; add the elpy package
    material-theme))
(setq elpy-rpc-virtualenv-path 'current)
(setq elpy-rpc-backend "jedi")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a24c5b3c12d147da6cef80938dca1223b7c7f70f2f382b26308eba014dc4833a" "732b807b0543855541743429c9979ebfb363e27ec91e82f463c91e68c772f6e3" default))
   '(org-support-shift-select t)
   '(package-selected-packages
     (quote
      (company-web ac-html-bootstrap ac-html-angular emmet-mode web-mode-edit-element htmlize helm-company elpy ox-rst ob-restclient diff-hl helm-gitignore gitignore-mode copy-as-format powerline dashboard all-the-icons engine-mode helm-ls-git helm-ag treemacs-icons-dired treemacs-magit treemacs-projectile treemacs helm-projectile projectile helm js-comint company-tern tern exec-path-from-shell yasnippet-snippets web-mode use-package smex smartparens rjsx-mode restclient py-isort move-text material-theme markdown-mode kubernetes k8s-mode indium hlinum flycheck dockerfile-mode docker))))
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#f36c60" "#8bc34a" "#fff59d" "#4dd0e1" "#b39ddb" "#81d4fa" "#263238"))
 '(async-bytecomp-package-mode t)
 '(custom-enabled-themes (quote (night-owl)))
 '(custom-safe-themes
   (quote
    ("f357d72451c46d51219c3afd21bb397a33cb059e21db1f4adeffe5b8a9093537" "0bfe81f0ddc788922f718b3320991320fa46a7ac7723e5f98967192e8d0393f8" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" default)))
 '(fci-rule-color "#37474f")
 '(helm-projectile-fuzzy-match nil)
 '(hl-sexp-background-color "#1c1f26")
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(markdown-command "pandoc")
 '(org-agenda-files nil)
 '(org-support-shift-select t)
 '(package-selected-packages
   (quote
    (skewer-mode counsel-etags pyenv-mode virtualenv yapfify jedi elpygen night-owl-theme xref-js2 tagedit js3-mode js3-modelayout restclient-helm rjsx-mode blacken js2-refactor js-comint company-tern tern apib-mode wgrep-helm helm-swoop swoop helm-rg helm-spotify fiplr elpy protobuf-mode py-isort exec-path-from-shell github-browse-file company-web ac-html-bootstrap ac-html-angular emmet-mode web-mode-edit-element use-package)))
 '(projectile-enable-caching t)
 '(projectile-mode t nil (projectile))
 '(py-isort-options nil)
 '(restclient-inhibit-cookies t)
 '(tls-program
   (quote
    ("gnutls-cli --insecure -p %p %h" "gnutls-cli --x509cafile %t -p %p %h" "gnutls-cli --x509cafile %t -p %p %h --protocols ssl3" "openssl s_client -connect %h:%p -no_ssl2 -ign_eof")))
 '(use-package-always-ensure t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#f36c60")
     (40 . "#ff9800")
     (60 . "#fff59d")
     (80 . "#8bc34a")
     (100 . "#81d4fa")
     (120 . "#4dd0e1")
     (140 . "#b39ddb")
     (160 . "#f36c60")
     (180 . "#ff9800")
     (200 . "#fff59d")
     (220 . "#8bc34a")
     (240 . "#81d4fa")
     (260 . "#4dd0e1")
     (280 . "#b39ddb")
     (300 . "#f36c60")
     (320 . "#ff9800")
     (340 . "#fff59d")
     (360 . "#8bc34a"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(lsp-ui-doc-background ((t (:background nil))))
 '(lsp-ui-doc-header ((t (:inherit (font-lock-string-face italic))))))
(put 'downcase-region 'disabled nil)
