;; カラム番号も表示
(column-number-mode t)

;; 列番号も表示
(line-number-mode t)

;; ファイルサイズを表示
(size-indication-mode t)

;; 現在ポイントがある関数名をモードラインに表示
(which-function-mode t)

;;current directory 表示
(let ((ls (member 'mode-line-buffer-identification
                  mode-line-format)))
  (setcdr ls
    (cons '(:eval (concat " ("
            (abbreviate-file-name default-directory)
            ")"))
          (cdr ls)
          )))
