(require 'ox-publish)
;; Customize the HTML output
(setq org-html-validation-link nil            ;; Don't show validation link
      org-html-head-include-scripts nil       ;; Use our own scripts
      org-html-head-include-default-style t ;; Use our own styles
      org-html-head "<link rel=\"stylesheet\" href=\"../src/styles.css \" />"
      org-html-head-extra "<link rel=\"stylesheet\" href=\"../src/colors.css \" />")

;; Define the publishing project
(setq org-publish-project-alist
      (list
       (list "org-site:main"
             :recursive t
             :base-directory "./src/org"
             :publishing-function 'org-html-publish-to-html
             :publishing-directory "./posts"
             :with-author nil           ;; Don't include author name
             :with-creator nil          ;; Don't include Emacs and Org versions in footer
             :with-toc t                ;; Include a table of contents
             :section-numbers nil       ;; Don't include section numbers
             :time-stamp-file nil)))    ;; Don't include time stamp in file

;; Generate the site output
(org-publish-all t)

(message "Build complete!")
