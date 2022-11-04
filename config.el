;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "John Doe"
      user-mail-address "john@doe.com")

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
(setq doom-font (font-spec :family "Source Code Pro"
                           :size 14.0
                           :weight 'normal
                           :width 'normal))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
(setq doom-theme 'dichromacy)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/git/personal/org/")


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

;;; Exit back to vim normal mode with key chords
(require 'key-chord)
(key-chord-mode t)
(key-chord-define-global "fd" 'evil-normal-state)
;; (key-chord-define-global "FD" 'evil-normal-state)
;; (key-chord-define-global "jh" 'evil-normal-state)
;; (key-chord-define-global "JH" 'evil-normal-state)

;;; Multiple, partial undos within a single insert mode session
(setq evil-want-fine-undo t)

;;; Keep current line vertically centered
;;; 1 (WORKS!)
(global-centered-cursor-mode t)
;;; 2
;; (setq maximum-scroll-margin 0.5
      ;; scroll-margin 99999
      ;; scroll-preserve-screen-position t
      ;; scroll-conservatively 0)
;;; 3 (from <spacemacs>/layers/+spacemacs/spacemacs-navigation/packages.el)
;; (defun spacemacs-navigation/init-centered-cursor-mode ()
  ;; (use-package centered-cursor-mode
  ;;   :commands (centered-cursor-mode
  ;;              global-centered-cursor-mode)
  ;;   :init
  ;;   (progn
  ;;     (spacemacs|add-toggle centered-point
  ;;       :mode centered-cursor-mode
  ;;       :documentation
  ;;       "Keep point at the center of the window."
  ;;       :evil-leader "t-")
  ;;     (spacemacs|add-toggle centered-point-globally
  ;;       :mode global-centered-cursor-mode
  ;;       :documentation
  ;;       "Keep point at the center of the window globally."
  ;;       :evil-leader "t C--"))
  ;;   :config
  ;;   (progn
  ;;     (setq ccm-recenter-at-end-of-file t
  ;;           ccm-ignored-commands '(mouse-drag-region
  ;;                                  mouse-set-point
  ;;                                  mouse-set-region
  ;;                                  widget-button-click
  ;;                                  scroll-bar-toolkit-scroll
  ;;                                  evil-mouse-drag-region))
  ;;     (spacemacs|diminish centered-cursor-mode " ⊝" " -"))))