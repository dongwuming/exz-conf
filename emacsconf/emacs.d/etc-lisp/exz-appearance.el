;; ==== colors =====
;; color-theme-molokai - https://github.com/alloy-d/color-theme-molokai
;; color-theme - http://www.emacswiki.org/emacs/ColorTheme
;; =================

;; font
(cond
 ((eq system-type 'darwin) (set-default-font "monofur-17"))
 ((eq system-type 'gnu/linux) (set-default-font "monofur-13"))
)

;; color schema
(set-background-color "black")
(set-foreground-color "white")
(set-face-foreground 'region "green")
(set-face-background 'region "blue")
;(load "~/.emacs.d/color-theme-molokai.el")
;(color-theme-molokai)
;(require 'color-theme-autoload "color-theme-autoloads")
;(require 'color-theme "color-theme/color-theme.el")


(provide 'exz-appearance)
