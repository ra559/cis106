---
title: Colored Man Pages
layout: page
---

# {{page.title}}

1. Install the bat program: `sudo apt install bat`
2. Set an alias so that `batcat` becomes `bat` and export MANPAGER and MANROFFOPT in `.bashrc`:<br>
```bash
cat >> ~/.bashrc <<'EOF'
alias bat='batcat'
export MANPAGER="sh -c 'col -bx | batcat -l man --paging=always'"
export MANROFFOPT="-c"
EOF
```