;; バックアップファイルを作成しない
;;(setq make-backup-files nil)

;; バックアップとオートセーブファイルを~/.emacs.d/backups/に保存する
(setq backup-directory-alist
  (cons (cons ".*" (expand-file-name "~/.emacs.d/backups"))
        backup-directory-alist))
(setq auto-save-file-name-transforms
  `((".*", (expand-file-name "~/.emacs.d/backups/") t)))
