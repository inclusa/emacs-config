(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (misterioso)))
 '(custom-safe-themes
   (quote
    ("f091883f92e4280f5ceb6caccf4d19e11b729883f2ca8e92719adbf964313ccd" "527ad0b513378351ae2c230fc1c6edb96e02ba18cb8d44a9af75c8b18635556f" "3c7165ae3c29765af5a544d597be36292df073b7db0e95521492569ca74a7dbe" "8bd35dc1843ca4f0ddf0a56e0f1a02b71af49ca3c68a075a27a53e4f3bd431f6" "8cacab3640df65f5929429bfa7bc3980ebcfa4a3ece48f4656e3a0f5b3c02163" default)))
 '(frame-brackground-mode (quote dark))
 '(org-agenda-files (quote ("~/Documents/56_bulletjournal/org/full.org")))
 '(prefer-coding-system (quote utf-8))
 '(send-mail-function (quote mailclient-send-it))
 '(set-default-coding-systems (quote UTF-8))
 '(set-language-environment "UTF-8"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; #00 Definim els paràmetres per defecte
(global-set-key "\C-cl" 'org-setore-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
;;
;;
;;
;
;
;; INDEX
;
;;; #01 Espeficar directori per defecte
;;; #02 Comença el calendar i amb el dia 1
;;; #03 Nomena els dies i els mesos en catala
;;; #04 Sense missatge de benvinguda
;;; #05 Reemplaça "yes" i "no" per "y" i "n"
;;; #06 Mou a la paperera al borrar els arxius y directoris
;;; #07 Guarda la sessió al tancar Emacs y restaurar-lo al arrancar-la de nou
;;; #08 Per tal que es mostren tots els buffers oberts al pulsar C-x b
;;; #09 Ignorar determinats buffers
;;; #10 Plantilles per a capturar
;;; #11 Mode captura
;;; #12 Capturar per templates
;;; #13 Especificació del directori per a themes baixats
;;; #14 Afegir repositori
;;; #15 Carrega els paquest del repositori
;;; #16 Activant snippets
;;; #17 Snippets configuració
;;; #18 Configuració de GIT amb el MAGIT
;;; #19 Configuració de Bullets
;
;
;
;
;
;
;;; #01 Espeficar directori per defecte
(setq default-directory "~/Documents/56_bulletjournal/org")
;(setq default-directory "~/bin/github/2eso/01_gh/08_unit/md/")
;
;
;
;;; #02 Comença el calendar i amb el dia 1
(setq
 calendar-week-start-day 1
;
;
;
;; #03 Nomena els dies i els mesos en catala calendar-day-name-array ["diumenge" "dilluns" "dimarts" "dimecres" "dijous" "divendres" "dissabte"]
calendar-day-name-array ["dg" "dll" "dm" "dx" "dj" "dv" "ds"]
 calendar-month-name-array ["gener" "febrer" "març" "abril" "maig" "juny" "juliol" "agost" "setembre" "octubre" "novembre" "desembre"]
)
;
;
;
;;; #04 Sense missatge de benvinguda
(setq inhibit-startup-message t)
;
;
;
;;; #05 Reemplaça "yes" i "no" per "y" i "n"
(fset 'yes-or-no-p 'y-or-n-p)
;
;
;
;;; #06 Mou a la paperera al borrar els arxius y directoris
(setq delete-by-moving-to-trash t
trash-directory "~/.local/share/Trash/files")
;
;
;
;;; #07 Guarda la sessió al tancar Emacs y restaurar-lo
;;; al arrancar-la de nou. Zero (0) per a desactivar:
(desktop-save-mode 0)
;
;
;
;;; #08 Per tal que es mostren tots els buffers oberts al pulsar C-x b (ido):
(ido-mode 1)
;
;
;
;;; #09 Ignorar determinats buffers
(setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*"
                           "*Messages*" "Async Shell Command" "*scratch*"
                           "*tramp*"))
;
;
;
;;; #10 Plantilles per a capturar
(setq org-directory "~/Documents/56_bulletjournal/org")
(setq org-default-notes-file "~/Documents/56_bulletjournal/notes")
;
;
;
;;; #11 Mode captura
;;; I use C-c c to start capture mode
(global-set-key (kbd "C-c c") 'org-capture)
;
;
;
;;; #12 Capturar per templates
;; Capture templates for: TODO tasks, Notes, appointments, phone calls, meetings, and org-protocol
(setq org-capture-templates
      (quote (("t" "todo" entry (file "~/Documents/56_bulletjournal/org/captura.org")
               "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("r" "respond" entry (file "~/Documents/56_bulletjournal/org/captura.org")
               "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
              ("n" "note" entry (file "~~/Documents/56_bulletjournal/org/captura.org")
               "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
              ("j" "Journal" entry (file+datetree "~/Documents/56_bulletjournal/org/diary.org")
               "* %?\n%U\n" :clock-in t :clock-resume t)
              ("w" "org-protocol" entry (file "~/Documents/56_bulletjournal/org/captura.org")
               "* TODO Review %c\n%U\n" :immediate-finish t)
              ("m" "Meeting" entry (file "~/Documents/56_bulletjournal/org/captura.org")
               "* MEETING with %? :MEETING:\n%U" :clock-in t :clock-resume t)
              ("p" "Phone call" entry (file "~/Documents/56_bulletjournal/org/captura.org")
               "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
              ("h" "Habit" entry (file "~/Documents/56_bulletjournal/org/captura.org")
               "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"%<<%Y-%m-%d %a .+1d/3d>>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))
;
;
;
;;; #13 Especificació del directori per a themes baixats
(add-to-list 'custom-theme-load-path "~/.emacs.d/etc/themes/") 
;
;
;					;
;;; #14 Afegir repositori
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;;; #15 Carrega els paquest del repositori
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;
;
;
;;; #16 Activant snippets
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"                 ;; personal snippets
;        "/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
;        "/.emacs.d/elpa/yasnippet-0.11.0/snippets/rst-mode" ;; rst-mode
;        "/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
;        "/path/to/yasnippet/snippets"         ;; the default collection
        ))

(yas-global-mode 1) ;; or M-x yas-reload-all if you've started YASnippet already.
;
;
;
;;; #17 Snippets configuració
;;(use-package yasnippet
;;  :ensure t
;;  :diminish ""
;;  :config
;;  (yas-global-mode 1))
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
;
;
;
;;; #18 Configuració de GIT amb el MAGIT
(global-set-key (kbd "C-x g") 'magit-status)
;
;
;
