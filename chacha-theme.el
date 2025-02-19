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
      (green-1 "#73d216") (green-2 "#366c04") (green-3 "#516c51")
      (blue-1 "#729fcf") (blue-2 "#3465a4") (blue-3 "#204a87")
      (purple-1 "#ad7fa8") (purple-2 "#75507b") (purple-3 "#6b3c77")
      (red-1 "#ef2929")  (red-2 "#cc0000")  (red-3 "#a40000")
      (red-4 "#8a0101") (red-5 "#aa3731")
      (alum-1 "#eeeeec") (alum-2 "#d3d7cf") (alum-3 "#c5c8c1")
      (alum-4 "#888a85") (alum-5 "#5f615c") (alum-6 "#4c504c")
      ;; darker alum6: 363833; even darker alum6: 2e3436
      ;; Not in Tango palette; used for better contrast.
      (green-4 "#bccdbc") (blue-0 "#8cc4ff") (orange-4 "#b35000")
      (green-5 "#397104")
      ;; Not in Tango palette; used for ANSI cyan.
      (cyan-1 "#34e2e2") (cyan-2 "#06989a") (cyan-3 "#076678"))

  (custom-theme-set-faces
   'chacha
   `(default ((,class (:foreground ,alum-6 :background ,alum-1))))
   `(cursor  ((,class (:background ,blue-3))))
   ;; Highlighting faces
   `(fringe  ((,class (:background ,alum-1))))
   `(highlight ((,class (:background ,alum-3))))
   `(hi-yellow ((t (:background ,choc-1))))
   `(region    ((,class (:background ,green-4))))
   `(secondary-selection ((,class (:background ,blue-0))))
   `(isearch ((,class (:foreground "#ffffff" :background ,orange-3))))
   `(lazy-highlight ((t (:background ,choc-1))))
   `(line-number ((t (:inherit default :foreground: ,alum-4))))
   `(line-number-current-line ((t (:inherit line-number :background ,choc-1))))
   `(trailing-whitespace ((t (:background ,red-1))))
   ;; Mode line faces
   `(mode-line ((t (:box nil :background ,alum-2 :foreground ,alum-6))))
   `(mode-line-inactive ((t (:box nil :background ,alum-4 :foreground ,alum-5))))
   ;; Tab bars
   `(tab-bar-tab          ((t (:box unspecified))))
   `(tab-bar-tab-inactive ((t (:background ,alum-4 :foreground ,alum-5 :box unspecified))))

   ;; Escape and prompt faces
   `(escape-glyph ((,class (:foreground ,red-3))))
   `(homoglyph ((,class (:foreground ,red-3))))
   `(error ((,class (:foreground ,red-3))))
   `(warning ((,class (:foreground ,orange-3))))
   `(success ((,class (:foreground ,green-2))))
   `(vertical-border   ((t ())))
   `(separator-line     ((t ())))
   ;; Minibuffer completions
   `(minibuffer-prompt ((,class (:weight bold :foreground ,blue-3))))
   `(completions-common-part ((,class (:foreground ,blue-2))))
   `(completions-first-difference ((,class (:foreground ,orange-2))))
   `(completions-annotations ((,class (:foreground ,alum-5))))

   ;; Font lock faces
   `(font-lock-builtin-face    ((t (:foreground ,purple-2))))
   `(font-lock-comment-face    ((t (:foreground ,orange-4, :italic nil))))
   `(font-lock-doc-face        ((t (:foreground ,cyan-3 :italic nil))))
   `(font-lock-constant-face   ((t (:foreground ,purple-2))))
   `(font-lock-function-name-face ((,class (:foreground ,blue-2))))
   `(font-lock-function-call-face ((t ())))
   `(font-lock-keyword-face ((t (:foreground "#171717"))))
   `(font-lock-string-face  ((t (:foreground ,green-5))))
   `(font-lock-number-face     ((t (:inherit font-lock-string-face))))
   `(highlight-numbers-number  ((t (:inherit font-lock-number-face))))
   `(font-lock-type-face    ((t ())))
   '(font-lock-variable-name-face ((t ())))
   '(font-lock-bracket-face ((t ())))
   `(font-lock-preprocessor-face ((t (:foreground ,red-3))))
   `(font-lock-misc-punctuation-face ((t (:foreground ,red-3))))

   ;; highlight-defined
   `(highlight-defined-variable-name-face ((t ())))

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
   `(gnus-group-news-1 ((,class (:foreground ,purple-3))))
   `(gnus-group-news-1-low ((,class (:foreground ,purple-3))))
   `(gnus-group-news-2 ((,class (:foreground ,blue-3))))
   `(gnus-group-news-2-low ((,class (:foreground ,blue-3))))
   `(gnus-group-news-3 ((,class (:foreground ,green-3))))
   `(gnus-group-news-3-low ((,class (:foreground ,green-4))))
   `(gnus-group-news-4 ((,class (:foreground ,"#7a4c02"))))
   `(gnus-group-news-4-low ((,class (:foreground ,"#7a4c02"))))
   `(gnus-group-news-5 ((,class (:foreground ,orange-3))))
   `(gnus-group-news-5-low ((,class (:foreground ,orange-3))))
   `(gnus-group-news-low ((,class (:foreground ,alum-4))))
   `(gnus-group-mail-1 ((,class (:foreground ,purple-3))))
   `(gnus-group-mail-1-low ((,class (:foreground ,purple-3))))
   `(gnus-group-mail-2 ((,class (:foreground ,blue-3))))
   `(gnus-group-mail-2-low ((,class (:foreground ,blue-3))))
   `(gnus-group-mail-3 ((,class (:foreground ,green-5))))
   `(gnus-group-mail-3-low ((,class (:foreground ,green-5))))
   `(gnus-group-mail-low ((,class (:foreground ,alum-4))))
   `(gnus-header-content ((,class (:foreground ,alum-4))))
   `(gnus-header-from ((,class (:foreground ,cyan-3))))
   `(gnus-header-subject ((,class (:foreground ,purple-3))))
   `(gnus-header-name ((,class (:foreground ,blue-3))))
   `(gnus-header-newsgroups ((,class (:foreground ,alum-4))))
   `(gnus-summary-normal-unread ((,class (:foreground ,cyan-2))))
   `(gnus-summary-normal-read   ((,class (:foreground ,blue-2))))
   `(gnus-cite-1   ((,class (:foreground ,green-2))))
   `(gnus-cite-2   ((,class (:foreground ,purple-2))))
   `(gnus-cite-3   ((,class (:foreground ,purple-2))))

   ;; Message faces
   `(message-header-name ((,class (:foreground ,blue-3))))
   `(message-header-cc ((,class (:foreground ,butter-3))))
   `(message-header-other ((,class (:foreground ,choc-2))))
   `(message-header-subject ((,class (:foreground ,red-3))))
   `(message-header-to ((,class (:weight bold :foreground ,butter-3))))
   `(message-cited-text ((,class (:slant italic :foreground ,alum-5))))
   `(message-separator ((,class (:weight bold :foreground ,green-2))))
   ;; SMerge
   `(smerge-refined-change ((,class ())))
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
   `(font-latex-subscript-face    ((t (:inherit font-latex-math-face))))
   `(font-latex-superscript-face    ((t (:inherit font-latex-math-face))))

   ;; Markdown
   `(markdown-header-face-1 ((t (:inherit default))))
   `(markdown-header-face-2 ((t (:inherit default))))
   `(markdown-header-face-3 ((t (:inherit default))))
   `(markdown-header-face-4 ((t (:inherit default))))
   `(markdown-header-face-5 ((t (:inherit default))))
   `(markdown-pre-face      ((t (:inherit default))))
   `(markdown-language-keyword-face ((t (:inherit font-lock-preprocessor-face))))

   ;; Org
   `(org-code    ((t (:inherit font-lock-builtin-face))))
   `(org-drawer  ((t (:inherit font-lock-function-name-face))))
   `(org-level-1 ((t (:inherit default))))
   `(org-level-2 ((t (:inherit default))))
   `(org-level-3 ((t (:inherit default))))
   `(org-level-4 ((t (:inherit default))))
   `(org-block   ((t (:inherit default))))
   `(org-table   ((t (:foreground ,cyan-3))))
   `(org-block-begin-line   ((t (:inherit font-lock-comment-face))))
   `(org-block-end-line     ((t (:inherit font-lock-comment-face))))
   `(org-headline-done      ((t ())))
   `(org-meta-line ((t (:inherit font-lock-comment-face))))

   ;; Meow
   `(meow-insert-cursor ((t (:background ,blue-3))))
   `(meow-beacon-cursor ((t (:background ,blue-3))))
   `(meow-keypad-cursor ((t (:background ,blue-3))))
   `(meow-normal-cursor ((t (:background ,blue-3))))
   ;; `(meow-normal-cursor ((t (:background "#608060"))))
   `(meow-unknown-cursor ((t (:background ,alum-4))))
   `(meow-search-highlight ((t (:background ,alum-3))))

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
   ;; Cargo
   `(cargo-process--standard-face ((,class (:inherit default))))
   ;; Not italic in Rust string
   `(rust-string-interpolation ((,class (:inherit font-lock-string-face :italic nil))))

   ;; magit using GitHub light theme with some tweaks
   `(magit-section-highlight    ((t (:background "grey85"))))
   `(magit-diff-added ((t (:foreground ,alum-6 :background "#d2fedb"))))
   `(magit-diff-added-highlight ((t (:inherit magit-diff-added))))
   `(magit-diff-removed ((t (:foreground ,alum-6 :background "#ffe4e0"))))
   `(magit-diff-removed-highlight ((t (:inherit magit-diff-removed))))

   ;; CSS
   `(css-property  ((t (:foreground ,cyan-3))))

   ;; shell
   `(sh-quoted-exec ((t (:foreground ,red-3))))
   `(sh-heredoc     ((t (:foreground ,green-3))))

   ;; ANSI colors
   `(ansi-color-black          ((,class (:background ,alum-6 :foreground ,alum-6))))
   `(ansi-color-red            ((,class (:background ,red-2 :foreground ,red-2))))
   `(ansi-color-green          ((,class (:background ,green-2 :foreground ,green-2))))
   `(ansi-color-yellow         ((,class (:background ,butter-3 :foreground ,butter-3))))
   `(ansi-color-blue           ((,class (:background ,blue-2 :foreground ,blue-2))))
   `(ansi-color-magenta        ((,class (:background ,purple-2 :foreground ,purple-2))))
   `(ansi-color-cyan           ((,class (:background ,cyan-2 :foreground ,cyan-2))))
   `(ansi-color-white          ((,class (:background ,alum-2 :foreground ,alum-2))))
   `(ansi-color-bright-black   ((,class (:background ,alum-6 :foreground ,alum-6))))
   `(ansi-color-bright-red     ((,class (:background ,red-2 :foreground ,red-2))))
   `(ansi-color-bright-green   ((,class (:background ,green-2 :foreground ,green-2))))
   `(ansi-color-bright-yellow  ((,class (:background ,butter-3 :foreground ,butter-3))))
   `(ansi-color-bright-blue    ((,class (:background ,blue-2 :foreground ,blue-2))))
   `(ansi-color-bright-magenta ((,class (:background ,purple-2 :foreground ,purple-2))))
   `(ansi-color-bright-cyan    ((,class (:background ,cyan-2 :foreground ,cyan-2))))
   `(ansi-color-bright-white   ((,class (:background ,alum-2 :foreground ,alum-2))))

   ;; lsp: disable all lsp syntax highlighting
   ;; https://emacs-lsp.github.io/lsp-mode/page/settings/semantic-tokens/
   ;; `(lsp-modeline-code-actions-face ((t (:foreground ,fg))))
   ;; `(lsp-modeline-code-actions-preferred-face ((t (:foreground ,teal))))
   `(lsp-face-semhl-comment ((t (:inherit font-lock-comment-face))))
   `(lsp-face-semhl-constant ((t ((:inherit font-lock-constant-face)))))
   `(lsp-face-semhl-default-library ((t ())))
   `(lsp-face-semhl-definition ((t ())))
   ;; `(lsp-face-semhl-deprecated ((t ())))
   `(lsp-face-semhl-enum ((t ())))
   `(lsp-face-semhl-event ((t ())))
   `(lsp-face-semhl-function ((t ())))
   `(lsp-face-semhl-implemntation ((t ())))
   `(lsp-face-semhl-interface ((t ())))
   `(lsp-face-semhl-keyword ((t (:inherit font-lock-keyword-face))))
   `(lsp-face-semhl-label ((t ())))
   `(lsp-face-semhl-macro ((t (:inherit font-lock-builtin-face))))
   `(lsp-face-semhl-member ((t ())))
   `(lsp-face-semhl-method ((t ())))
   `(lsp-face-semhl-namespace ((t ())))
   `(lsp-face-semhl-number ((t (:inherit font-lock-number-face))))
   `(lsp-face-semhl-operator ((t ())))
   `(lsp-face-semhl-parameter ((t ())))
   `(lsp-face-semhl-property ((t ())))
   `(lsp-face-semhl-regexp ((t ())))
   `(lsp-face-semhl-static ((t ())))
   `(lsp-face-semhl-string ((t (:inherit font-lock-string-face))))
   `(lsp-face-semhl-struct ((t ())))
   `(lsp-face-semhl-type ((t ())))
   `(lsp-face-semhl-type-parameter ((t ())))
   `(lsp-face-semhl-variable ((t ())))

   ;; Rust mode
   `(rust-keyword2  ((t ())))
   `(rust-prelude-value ((t (:inherit font-lock-constant-face))))

   ))

(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'chacha)

;;; tango-theme.el ends here
