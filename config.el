;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!
(setq doom-font (font-spec :weight 'normal
                           ;; :family "Source Code Pro"
                           :family "MesloLGS NF"
                           :size 14.0
                           :width 'normal))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)

;; DARK 
(setq doom-theme 'doom-city-lights)  ; good style  ; low contrast  ; comments impossible to see (see below)
        (setq doom-city-lights-brighter-comments t)
        (setq doom-city-lights-comment-bg nil)
;; (setq doom-theme 'doom-Iosvkem)  ; great, high contrast  ; org headlines low contrast
;; (setq doom-theme 'doom-oceanic-next)  ; org is pretty good  ; code is great  ; python is ok
;; (setq doom-theme 'doom-molokai)
;;         (setq doom-molokai-brighter-comments t)
;; (setq doom-theme 'tsdh-dark) ; can't undo bolding
;; (setq doom-theme 'doom-acario-dark)
;; (setq doom-theme 'doom-dark+)  ; great  ; too much green in comments  ; org headlines low contrast
;; (setq doom-theme 'doom-lantern)
;; (setq doom-theme 'doom-gruvbox)
;; (setq doom-theme 'doom-zenburn)  ; great, cloudy
;; (setq doom-theme 'doom-material-dark)
;; (setq doom-theme 'doom-wilmersdorf)  ; soothing  ; not much contrast
;; (setq doom-theme 'doom-nord-aurora)  ; soothing  ; not much contrast
;; (setq doom-theme 'doom-manegarm)  ; old terminal style
;;      (setq doom-manegarm-darker-background t)
;; (setq doom-theme 'doom-miramare)  ; good, sepia feels
;; (setq doom-theme 'doom-horizon)  ; great, high contrast  ; org headlines low contrast
;; (setq doom-theme 'doom-palenight)  ; good low key, org headlines are low contrast
;; (setq doom-theme 'doom-xcode)  ; hyper vibrant
;; (setq doom-theme 'doom-snazzy)  ; hyper vibrant
;; (setq doom-theme 'doom-tomorrow-night)  ; org is bad
;; (setq doom-theme 'tango-dark)  ; great  ; too much green in comments  ; active line no color

;; LIGHT
;; (setq doom-theme 'dichromacy) ; can't undo bolding  ; clear comments
;; (setq doom-theme 'doom-gruvbox-light)
;; (setq doom-theme 'doom-solarized-light)
;; (setq doom-theme 'doom-nord-light)
;; (setq doom-theme 'doom-flatwhite) ; org headlines low contrast  ; uses bg's for variables, strings, etc
;; (setq doom-theme 'tsdh-light)  ; good basic
;; (setq doom-theme 'tango)  ; good basic
;; (setq doom-theme 'default)  ; good basic
;; (setq doom-theme 'doom-tomorrow-day)  ; org headlines similar

(setq doom-themes-enable-bold nil)
(setq modus-themes-bold-constructs nil)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/git/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;;
;; they are implemented.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Exit back to vim normal mode with key chords
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'key-chord)
(key-chord-mode t)
(key-chord-define-global "fd" 'evil-normal-state)
(setq key-chord-safety-interval-forward 0.1)
;; (key-chord-define-global "FD" 'evil-normal-state)
;; (key-chord-define-global "jh" 'evil-normal-state)
;; (key-chord-define-global "JH" 'evil-normal-state)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Multiple, partial undos within a single insert mode session
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq evil-want-fine-undo t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Keep current line vertically centered
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-centered-cursor-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Disable mouse
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun silence()
  (interactive))
;;; Don't move the cursor on click
(define-key evil-motion-state-map [down-mouse-1] 'silence)
(define-key evil-normal-state-map [down-mouse-1] 'silence)
(define-key evil-insert-state-map [down-mouse-1] 'silence)
(define-key evil-motion-state-map [mouse-1] 'silence)
;;; Don't visual mode on drag
(define-key evil-motion-state-map [drag-mouse-1] 'silence)
(define-key evil-normal-state-map [drag-mouse-1] 'silence)
(define-key evil-insert-state-map [drag-mouse-1] 'silence)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Org configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq org-tag-persistent-alist
  '(("HOUSE") ("WORK") ("CUSTOMER") ("SIDE") ("ENTERTAINMENT") ("LEARN")))
  ;; '(("HOUSE(h)") ("WORK(w)") ("CUSTOMER(c)") ("SIDE(s)") ("ENTERTAINMENT(e)") ("LEARN(l)")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; LSP configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; needed for emacs to find pylsp
;; enable for windows
;; disable for mac/linux
;(setq lsp-pylsp-server-command "C:/Programs/Python/Python310/Scripts/pylsp.exe")
