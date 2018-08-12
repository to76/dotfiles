;; シフト＋矢印で範囲選択
(setq pc-select-selection-keys-only t)

;; シフト＋delでミニバッファの履歴を削除
(define-key minibuffer-local-map (kbd "S-<delete>")
  #'(lambda ()
      (interactive)
      (set minibuffer-history-variable (delete (buffer-substring-no-properties (minibuffer-prompt-end) (point-max)) (symbol-value minibuffer-history-variable)))
      (goto-history-element minibuffer-history-position)
))

;; C-mにnewline-and-indentを割り当てる
(global-set-key (kbd "C-m") 'newline-and-indent)

;; C-jにnewline-and-indentを割り当てる
(global-set-key (kbd "C-j") 'newline-and-indent)


;; 折り返しトグルコマンド
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)

;; "C-t"でウィンドウを切り替える．初期値はtranspose-chars
(define-key global-map (kbd "C-t") 'other-window)
