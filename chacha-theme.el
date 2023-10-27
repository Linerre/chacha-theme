;;; chacha-theme.el --- Tango-based custom theme for faces  -*- lexical-binding:t -*-
;; Authors: Linerre <errelinaaron@gmail.com>

;;; Commentary:

;; The colors in this theme come from the Tango palette, which is in
;; the public domain: http://tango.freedesktop.org/
;; It main difference with the original tango is that it follows Alabster's
;; philosophy which highlights only those parts that can be reliably recognized.

;;; Code:

(deftheme chacha
  "Face colors using the Tango palette (light background).
Basic, Font Lock, Isearch, Gnus, Message, Ediff, Flyspell,
Semantic, and Ansi-Color faces are included."
  :background-mode 'light
  :kind 'color-scheme
  :family 'chacha)

(let ((class '((class color) (min-colors 89)))
      ;; Tango palette colors.
      (butter-1 "#fce94f") (butter-2 "#edd400") (butter-3 "#c4a000")
      (orange-1 "#fcaf3e") (orange-2 "#f57900") (orange-3 "#ce5c00")
      (choc-1 "#e9b96e") (choc-2 "#c17d11") (choc-3 "#8f5902")
      (green-1 "#8ae234") (cham-2 "#73d216") (green-3 "#4e9a06")
      (blue-1 "#729fcf") (blue-2 "#3465a4") (blue-3 "#204a87")
      (purple-1 "#ad7fa8") (purple-2 "#75507b") (purple-3 "#5c3566")
      (red-1 "#ef2929")  (red-2 "#cc0000")  (red-3 "#a40000")
      (alum-1 "#eeeeec") (alum-2 "#d3d7cf") (alum-3 "#babdb6")
      (alum-4 "#888a85") (alum-5 "#5f615c") (alum-6 "#2e3436")
      ;; Not in Tango palette; used for better contrast.
      (cham-4 "#346604") (blue-0 "#8cc4ff") (orange-4 "#b35000")
      ;; Not in Tango palette; used for ANSI cyan.
      (cyan-1 "#34e2e2") (cyan-2 "#06989a"))

  (custom-theme-set-faces
   'chacha
   `(default ((,class (:foreground ,alum-6 :background ,alum-1))))
   `(cursor ((,class (:background ,blue-3))))
   ;; Highlighting faces
   `(fringe ((,class (:background ,alum-1))))
   `(highlight ((,class (:background ,alum-3))))
   `(region ((,class (:background ,alum-3))))
   `(secondary-selection ((,class (:background ,blue-0))))
   `(isearch ((,class (:foreground "#ffffff" :background ,orange-3))))
   `(lazy-highlight ((,class (:background ,choc-1))))
   `(trailing-whitespace ((,class (:background ,red-1))))
   ;; Mode line faces
   `(mode-line ((,class (:box (:line-width -1 :style released-button)
			 :background ,alum-2 :foreground ,alum-6))))
   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
				  :background ,alum-4 :foreground ,alum-6))))
   ;; Escape and prompt faces
   `(escape-glyph ((,class (:foreground ,red-3))))
   `(homoglyph ((,class (:foreground ,red-3))))
   `(error ((,class (:foreground ,red-3))))
   `(warning ((,class (:foreground ,orange-3))))
   `(success ((,class (:foreground ,green-3))))
   `(vertical-border   ((t ())))
   `(separator-line     ((t ())))
   ;; Minibuffer completions
   `(minibuffer-prompt ((,class (:weight bold :foreground ,blue-3))))
   `(completions-common-part ((,class (:foreground ,blue-2))))
   `(completions-first-difference ((,class (:foreground ,orange-2))))
   `(completions-annotations ((,class (:foreground ,alum-5))))

   ;; Font lock faces
   `(font-lock-builtin-face ((,class (:foreground ,purple-2))))
   `(font-lock-comment-face ((,class (:foreground ,red-3, :italic nil))))
   `(font-lock-doc-face ((,class (:foreground ,cyan-2 :italic nil))))
   `(font-lock-constant-face ((,class (:foreground ,purple-2))))
   `(font-lock-number-face ((t (:inherit font-lock-constant-face))))
   `(highlight-numbers-number         ((t (:inherit font-lock-constant-face))))
   `(font-lock-function-name-face ((,class (:foreground ,blue-2))))
   `(font-lock-keyword-face ((,class (:foreground ,alum-5))))
   `(font-lock-string-face ((,class (:foreground ,green-3))))
   `(font-lock-type-face ((t ())))
   `(font-lock-variable-name-face ((t ())))
   `(font-lock-preprocessor-face ((,class (:foreground ,alum-4))))
   ;; Button and link faces
   `(link ((,class (:underline t :foreground ,blue-3))))
   `(link-visited ((,class (:underline t :foreground ,blue-2))))

   `(company-preview-common            ((t (:inherit default))))
   `(company-preview-search            ((t (:inherit default))))
   `(company-tooltip-common            ((t ())))
   `(company-tooltip-common-selection  ((t (:bold t :foreground ,blue-2))))
   `(company-tooltip                   ((t (:background ,alum-2))))
   `(company-tooltip-search            ((t ())))
   `(company-tooltip-search-selection  ((t (:background ,alum-3 :foreground ,alum-6))))
   `(company-tooltip-selection         ((t (:background ,alum-3 :foreground ,alum-6))))
   `(company-tooltip-mouse             ((t (:background ,alum-3 :foreground ,alum-6))))
   `(company-tooltip-preview           ((t (:background ,alum-3 :foreground ,alum-6))))
   `(company-tooltip-annotation        ((t ())))
   `(company-tooltip-scrollbar-track   ((t (:background ,alum-2))))
   `(company-tooltip-scrollbar-thumb   ((t (:background ,blue-2))))
   ;; `(company-template-field            ((t (:inherit yas-field-highlight-face))))

   ;; Gnus faces
   `(gnus-group-news-1 ((,class (:weight bold :foreground ,purple-3))))
   `(gnus-group-news-1-low ((,class (:foreground ,purple-3))))
   `(gnus-group-news-2 ((,class (:weight bold :foreground ,blue-3))))
   `(gnus-group-news-2-low ((,class (:foreground ,blue-3))))
   `(gnus-group-news-3 ((,class (:weight bold :foreground ,red-3))))
   `(gnus-group-news-3-low ((,class (:foreground ,red-3))))
   `(gnus-group-news-4 ((,class (:weight bold :foreground ,"#7a4c02"))))
   `(gnus-group-news-4-low ((,class (:foreground ,"#7a4c02"))))
   `(gnus-group-news-5 ((,class (:weight bold :foreground ,orange-3))))
   `(gnus-group-news-5-low ((,class (:foreground ,orange-3))))
   `(gnus-group-news-low ((,class (:foreground ,alum-4))))
   `(gnus-group-mail-1 ((,class (:weight bold :foreground ,purple-3))))
   `(gnus-group-mail-1-low ((,class (:foreground ,purple-3))))
   `(gnus-group-mail-2 ((,class (:weight bold :foreground ,blue-3))))
   `(gnus-group-mail-2-low ((,class (:foreground ,blue-3))))
   `(gnus-group-mail-3 ((,class (:weight bold :foreground ,green-3))))
   `(gnus-group-mail-3-low ((,class (:foreground ,green-3))))
   `(gnus-group-mail-low ((,class (:foreground ,alum-4))))
   `(gnus-header-content ((,class (:foreground ,green-3))))
   `(gnus-header-from ((,class (:weight bold :foreground ,butter-3))))
   `(gnus-header-subject ((,class (:foreground ,red-3))))
   `(gnus-header-name ((,class (:foreground ,blue-3))))
   `(gnus-header-newsgroups ((,class (:foreground ,alum-4))))
   ;; Message faces
   `(message-header-name ((,class (:foreground ,blue-3))))
   `(message-header-cc ((,class (:foreground ,butter-3))))
   `(message-header-other ((,class (:foreground ,choc-2))))
   `(message-header-subject ((,class (:foreground ,red-3))))
   `(message-header-to ((,class (:weight bold :foreground ,butter-3))))
   `(message-cited-text ((,class (:slant italic :foreground ,alum-5))))
   `(message-separator ((,class (:weight bold :foreground ,green-3))))
   ;; SMerge
   `(smerge-refined-change ((,class (:background ,purple-1))))
   ;; Ediff
   `(ediff-current-diff-A ((,class (:background ,blue-1))))
   `(ediff-fine-diff-A ((,class (:background ,purple-1))))
   `(ediff-current-diff-B ((,class (:background ,butter-1))))
   `(ediff-fine-diff-B ((,class (:background ,orange-1))))
   ;; Flyspell
   `(flyspell-duplicate ((,class (:underline ,orange-1))))
   `(flyspell-incorrect ((,class (:underline ,red-1))))

   ;; Latex
   `(font-latex-warning-face    ((,class (:foreground ,red-3))))
   `(font-latex-sectioning-1-face ((t (:inherit default))))
   `(font-latex-sectioning-2-face ((t (:inherit default))))
   `(font-latex-sectioning-3-face ((t (:inherit default))))
   `(font-latex-sectioning-4-face ((t (:inherit default))))
   `(font-latex-sectioning-5-face ((t (:inherit default))))
   `(font-latex-string-face       ((t (:inherit font-lock-string-face))))

   ;; Org
   `(org-code    ((t (:foreground ,red-2))))
   `(org-drawer  ((t (:foreground ,orange-3))))
   `(org-level-1 ((t (:bold t :foreground ,green-3))))
   `(org-level-2 ((t (:bold t :foreground ,blue-2))))
   `(org-level-3 ((t (:bold t :foreground ,orange-4))))
   `(org-level-4 ((t (:bold t :foreground ,cyan-2))))
   ;; Realgud
   `(realgud-overlay-arrow1  ((,class (:foreground "dark green"))))
   `(realgud-overlay-arrow2  ((,class (:foreground "#7a4c02"))))
   `(realgud-overlay-arrow3  ((,class (:foreground ,orange-1))))
   `(realgud-bp-disabled-face      ((,class (:foreground ,purple-1))))
   `(realgud-bp-line-enabled-face  ((,class (:underline "red"))))
   `(realgud-bp-line-disabled-face ((,class (:underline ,purple-1))))
   `(realgud-file-name             ((,class :foreground "dark green")))
   `(realgud-line-number           ((,class :foreground ,purple-3)))
   `(realgud-backtrace-number      ((,class :foreground ,blue-3 :weight bold)))
   ;; Semantic faces
   `(semantic-decoration-on-includes ((,class (:underline  ,cham-4))))
   `(semantic-decoration-on-private-members-face
     ((,class (:background ,alum-2))))
   `(semantic-decoration-on-protected-members-face
     ((,class (:background ,alum-2))))
   `(semantic-decoration-on-unknown-includes
     ((,class (:background ,choc-3))))
   `(semantic-decoration-on-unparsed-includes
     ((,class (:underline  ,orange-3))))
   `(semantic-tag-boundary-face ((,class (:overline   ,blue-1))))
   `(semantic-unmatched-syntax-face ((,class (:underline  ,red-1))))
   ;; Cargo
   `(cargo-process--standard-face ((,class (:inherit default))))
   ;; ANSI colors
   `(ansi-color-black ((,class (:background ,alum-6 :foreground ,alum-6))))
   `(ansi-color-red ((,class (:background ,red-2 :foreground ,red-2))))
   `(ansi-color-green ((,class (:background ,green-3 :foreground ,green-3))))
   `(ansi-color-yellow ((,class (:background ,butter-3 :foreground ,butter-3))))
   `(ansi-color-blue ((,class (:background ,blue-2 :foreground ,blue-2))))
   `(ansi-color-magenta ((,class (:background ,purple-2 :foreground ,purple-2))))
   `(ansi-color-cyan ((,class (:background ,cyan-2 :foreground ,cyan-2))))
   `(ansi-color-white ((,class (:background ,alum-2 :foreground ,alum-2))))
   `(ansi-color-bright-black ((,class (:background ,alum-5
				       :foreground ,alum-5))))
   `(ansi-color-bright-red ((,class (:background ,red-1 :foreground ,red-1))))
   `(ansi-color-bright-green ((,class (:background ,green-1
				       :foreground ,green-1))))
   `(ansi-color-bright-yellow ((,class (:background ,butter-1
					:foreground ,butter-1))))
   `(ansi-color-bright-blue ((,class (:background ,blue-1
				      :foreground ,blue-1))))
   `(ansi-color-bright-magenta ((,class (:background ,purple-1
					 :foreground ,purple-1))))
   `(ansi-color-bright-cyan ((,class (:background ,cyan-1
				      :foreground ,cyan-1))))
   `(ansi-color-bright-white ((,class (:background ,alum-1
				       :foreground ,alum-1))))))

(provide-theme 'chacha)

;;; tango-theme.el ends here
