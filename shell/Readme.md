# ⚡ Dotfiles – One Command Dev Setup

Minimal, fast, and portable developer setup for macOS & Linux.

---

## 🚀 What this does

With a single command, this setup installs:

* 🐚 Zsh + Oh My Zsh
* ⚡ Zsh plugins (autosuggestions + syntax highlighting)
* 📦 Node.js (LTS) via NVM
* 🛠 Git + basic CLI tools
* 🔁 Your shell config, aliases, and git setup

---

## 📁 Structure

```
dotfiles/
├── install.sh
├── .zshrc
├── .bashrc
├── .bash_profile
├── .gitconfig
├── .gitignore_global
├── shell/
│   ├── env.sh
│   ├── aliases.sh
│   ├── node.sh
```

---

## ⚡ Quick Setup (New Machine)

```bash
git clone https://github.com/yourusername/dotfiles.git
cd dotfiles
bash install.sh
```

👉 Restart terminal after install.

---

## 🧠 Features

### ✨ Smart Terminal

* Autosuggestions from history
* Syntax highlighting (valid/invalid commands)

### 📦 Node Setup

* NVM installed automatically
* Latest LTS Node version set as default

### ⚙️ Modular Config

* `env.sh` → environment variables
* `aliases.sh` → shortcuts
* `node.sh` → Node/NVM setup

### 🔁 Cross-Shell Support

* Works with **zsh** and **bash**

---

## 🛠 Customization

### Add your own configs

Edit:

```bash
shell/env.sh
shell/aliases.sh
```

---

### Machine-specific configs (not committed)

Create:

```bash
~/.zshrc.local
```

Example:

```bash
export API_KEY="your-key"
```

---

## 🔐 Notes

* No sensitive data is stored
* Use `.zshrc.local` for secrets
* Safe to push publicly

---

## 💡 Requirements

* macOS or Linux
* Internet connection
* Basic terminal access

---

## 🔥 Optional Upgrades (future)

* ⭐ Starship prompt
* ⚡ zoxide (better cd)
* 🔍 fzf (fuzzy search)
* 📦 pnpm / bun

---

## 🤝 Contributing

Feel free to fork and customize for your own workflow.

---

## 📌 Author

**Onkar Patel**

---

## ⭐ If this helped

Give it a star ⭐
s
