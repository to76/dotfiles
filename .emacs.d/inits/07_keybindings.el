;; シフト＋矢印で範囲選択
(setq pc-select-selection-keys-only t)

;; シフト＋delでミニバッファの履歴を削除
(define-key minibuffer-local-map (kbd "S-<delete>")
  #'(lambda ()
      (interactive)
      (set minibuffer-history-variable (delete (buffer-substring-no-properties (minibuffer-prompt-end) (point-max)) (symbol-value minibuffer-history-variable)))
      (goto-history-element minibuffer-history-position)
))
