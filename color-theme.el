;; Set a custom color theme
;;
;; Note:  Theme is only set in graphic mode
(require 'color-theme)

(defun color-theme-ndavis-dark ()
  "A dark color them created by Nathan Davis.  Based on theme created by djcb at http://emacs-fu.blogspot.com/2009/03/color-theming.html"
  (interactive)
  (color-theme-install
    '(color-theme-ndavis-dark
       ;((foreground-color . "#a9eadf")
       ((foreground-color . "#ccc")
	;(background-color . "black")
	(background-color . "#333")
	(background-mode . dark))
       (bold ((t (:bold t))))
       (bold-italic ((t (:italic t :bold t))))
       (default ((t (nil))))
       
       (font-lock-builtin-face ((t (:italic t :foreground "#a96da0"))))
       ;(font-lock-comment-face ((t (:italic t :foreground "#bbbbbb"))))
       (font-lock-comment-face ((t (:italic t :foreground "Red"))))
       ;(font-lock-comment-delimiter-face ((t (:foreground "#666666"))))
       (font-lock-comment-delimiter-face ((t (:foreground "Red"))))
       (font-lock-constant-face ((t (:bold t :foreground "#197b6e"))))
       (font-lock-doc-string-face ((t (:foreground "#3041c4"))))
       ;(font-lock-doc-face ((t (:foreground "gray"))))
       (font-lock-doc-face ((t (:foreground "Orchid"))))
       (font-lock-reference-face ((t (:foreground "white"))))
       ;(font-lock-function-name-face ((t (:foreground "#356da0"))))
       (font-lock-function-name-face ((t (:bold t :foreground "CornFlowerBlue"))))
       ;(font-lock-keyword-face ((t (:bold t :foreground "#bcf0f1"))))
       (font-lock-keyword-face ((t (:bold t :foreground "LightSteelBlue"))))
       (font-lock-preprocessor-face ((t (:foreground "#e3ea94"))))
       ;(font-lock-string-face ((t (:foreground "#ffffff"))))
       ;(font-lock-string-face ((t (:foreground "#30d030"))))
       (font-lock-string-face ((t (:foreground "LimeGreen"))))
       ;(font-lock-type-face ((t (:bold t :foreground "#364498"))))
       (font-lock-type-face ((t (:bold t :foreground "CornFlowerBlue"))))
       (font-lock-variable-name-face ((t (:foreground "#7685de"))))
       (font-lock-warning-face ((t (:bold t :italic nil :underline nil
                                     :foreground "yellow"))))
       (hl-line ((t (:background "#112233"))))
       ;(mode-line ((t (:foreground "#ffffff" :background "#333333"))))
       (mode-line ((t (:foreground "#ffffff" :background "SlateGray"))))
       (region ((t (:foreground nil :background "#555555"))))
       ;(show-paren-match-face ((t (:bold t :foreground "#ffffff"
       ;                             :background "#050505")))))))
       (show-paren-match-face ((t (:bold t :foreground "Yellow"
					 :background "SteelBlue"))))
       ;; Additional Customizations
       (show-paren-mismatch-face ((t (:bold t :foreground "Red"
					    :background nil
					    :box "Red"))))
       ;(fringe ((t (:background "#444"))))
       (fringe ((t (:foreground "AliceBlue" :background "SlateGray"))))
       (minibuffer-prompt ((t (:foreground "SteelBlue"))))
       (diff-added ((t (:foreground "LimeGreen"))))
       (diff-changed ((t (:foreground "Yellow"))))
       (diff-removed ((t (:foreground "Red"))))
       (linum ((t (:foreground "SlateGray")))))))

(when (display-graphic-p)
  (eval-after-load "color-theme"
    '(progn ; Don't know why, but I could only get the follow to work with eval-after-load
       (color-theme-initialize)
       ;(color-theme-high-contrast)))
       (color-theme-ndavis-dark))))

;; Fuction to toggle fullscreen mode
;;
;; From http://www.emacswiki.org/emacs/FullScreen
(defun toggle-fullscreen (&optional f)
  (interactive)
  (let ((current-value (frame-parameter nil 'fullscreen)))
    (set-frame-parameter nil 'fullscreen
			 (if (equal 'fullboth current-value)
			     (if (boundp 'old-fullscreen) old-fullscreen nil)
			   (progn (setq old-fullscreen current-value)
				  'fullboth)))))

(global-set-key [f11] 'toggle-fullscreen)

;;; Interactive "magnification" functions

(defun magnify-huge ()
  (interactive)
  (set-face-attribute 'default nil :height 225))

(defun magnify ()
  (interactive)
  (set-face-attribute 'default nil :height 150))

(defun unmagnify ()
  (interactive)
  (set-face-attribute 'default nil :height 100))
