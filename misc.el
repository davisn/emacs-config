;; Always use spaces, instead of tabs
(setq-default indent-tabs-mode nil)

;; Disable the toolbar
(tool-bar-mode nil)

;; Turn on Line and Column numbering
(global-linum-mode t)  ; Shows line numbers to the left of the buffer
(column-number-mode t) ; Shows the column number in the buffer's mode line

;; Turn on Paren-Match Highlighting
;;
;; (Note: It seems this must be done before setting up the color theme,
;;        otherwise the theme's settings for Paren-Match highlighting
;;        is not applied
(show-paren-mode t)
