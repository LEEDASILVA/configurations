# 🧠 Neovim Daily Cheat Sheet

> A quick reference for EDA and general programming workflows.

---

## 🔁 Insert Mode

| Command | Description                |
| ------- | -------------------------- |
| `i`     | Insert before cursor       |
| `I`     | Insert at start of line    |
| `a`     | Append after cursor        |
| `A`     | Append at end of line      |
| `o`     | Open line below and insert |
| `O`     | Open line above and insert |

---

## ⛵ Navigation

| Command    | Description                                |
| ---------- | ------------------------------------------ |
| `h j k l`  | Move left, down, up, right                 |
| `w`, `e`   | Jump forward by word/end of word           |
| `b`, `ge`  | Jump backward by word/end of word          |
| `0`, `^`   | Beginning of line (column 0 or first char) |
| `$`        | End of line                                |
| `gg` / `G` | Top / bottom of file                       |
| `%`        | Jump between matching brackets             |
| `zz`       | Center current line in screen              |

---

## 🔍 Searching

| Command    | Description                               |
| ---------- | ----------------------------------------- |
| `/pattern` | Search forward                            |
| `?pattern` | Search backward                           |
| `n` / `N`  | Repeat search forward / backward          |
| `*` / `#`  | Search word under cursor forward/backward |
| `:noh`     | Remove search highlight                   |

---

## ✂️ Editing

| Command   | Description                 |
| --------- | --------------------------- |
| `x`       | Delete character            |
| `r`       | Replace character           |
| `dd`      | Delete line                 |
| `yy`      | Yank (copy) line            |
| `p` / `P` | Paste after / before cursor |
| `u`       | Undo                        |
| `Ctrl+r`  | Redo                        |
| `.`       | Repeat last change          |

---

## 📋 Visual Mode

| Command       | Description                        |
| ------------- | ---------------------------------- |
| `v`           | Character-wise selection           |
| `V`           | Line-wise selection                |
| `Ctrl+v`      | Block-wise (column) selection      |
| `>` / `<`     | Indent / unindent lines            |
| `y`, `d`, `c` | Yank, delete, change inside visual |

---

## 🔧 LSP (Built-in)

| Command      | Description                       |
| ------------ | --------------------------------- |
| `gd` / `gD`  | Go to definition / declaration    |
| `gi` / `gr`  | Go to implementation / references |
| `K`          | Hover documentation               |
| `]d` / `[d`  | Next / previous diagnostic        |
| `<leader>rn` | Rename symbol                     |
| `<leader>ca` | Code action                       |

---

## 🔀 Splits & Tabs

| Command          | Description                 |
| ---------------- | --------------------------- |
| `:vsp` / `:sp`   | Vertical / horizontal split |
| `:vnew`          | New empty vertical split    |
| `Ctrl-w h/j/k/l` | Navigate splits             |
| `:tabnew`        | Open new tab                |
| `gt` / `gT`      | Next / previous tab         |

---

## 📑 Buffers

| Command             | Description                 |
| ------------------- | --------------------------- |
| `:ls`               | List buffers                |
| `:bnext` / `:bprev` | Next / previous buffer      |
| `:bd`               | Delete buffer               |
| `:edit file`        | Open file in current buffer |

---

## 📋 Quickfix / Location Lists

| Command  | Description            |
| -------- | ---------------------- |
| `:copen` | Open quickfix list     |
| `:cnext` | Next quickfix item     |
| `:cprev` | Previous quickfix item |
| `:lopen` | Open location list     |
| `:lnext` | Next location          |
| `:lprev` | Previous location      |

---

## 💾 File Ops

| Command                 | Description                     |
| ----------------------- | ------------------------------- |
| `:w`, `:q`, `:wq`, `:x` | Write, quit, write & quit       |
| `:e file`               | Open file                       |
| `:Ex`                   | File explorer (netrw)           |
| `:saveas name`          | Save current buffer as new file |

---

## 🧠 Misc

| Command       | Description                      |
| ------------- | -------------------------------- |
| `:syntax on`  | Enable syntax highlighting       |
| `:set nu rnu` | Show absolute & relative numbers |
| `:set list`   | Show tabs and EOL chars          |
| `:set wrap`   | Wrap long lines                  |

---

## 🔌 Suggested Plugins (for EDA Dev)

| Plugin            | Purpose                           |
| ----------------- | --------------------------------- |
| `nvim-lspconfig`  | LSP support                       |
| `nvim-cmp`        | Autocompletion                    |
| `telescope.nvim`  | Fuzzy finder                      |
| `nvim-treesitter` | Syntax-aware highlighting/parsing |
| `bufferline.nvim` | Nice buffer tabs                  |
| `trouble.nvim`    | Better diagnostics UI             |
| `which-key.nvim`  | Discoverable keybindings          |

---
