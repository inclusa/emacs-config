;;; writeroom-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "writeroom-mode" "writeroom-mode.el" (22879
;;;;;;  3577 909507 781000))
;;; Generated autoloads from writeroom-mode.el

(autoload 'writeroom-mode "writeroom-mode" "\
Minor mode for distraction-free writing.

\(fn &optional ARG)" t nil)

(defvar global-writeroom-mode nil "\
Non-nil if Global-Writeroom mode is enabled.
See the command `global-writeroom-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-writeroom-mode'.")

(custom-autoload 'global-writeroom-mode "writeroom-mode" nil)

(autoload 'global-writeroom-mode "writeroom-mode" "\
Toggle Writeroom mode in all buffers.
With prefix ARG, enable Global-Writeroom mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Writeroom mode is enabled in all buffers where
`turn-on-writeroom-mode' would do it.
See `writeroom-mode' for more information on Writeroom mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("writeroom-mode-pkg.el") (22879 3578 204366
;;;;;;  378000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; writeroom-mode-autoloads.el ends here
