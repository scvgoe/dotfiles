ln -svf $PWD/.vimrc ~
ln -svf $PWD/.zshrc ~
ln -svf $PWD/.screenrc ~
ln -svf $PWD/.tmux.conf ~

# Claude Code
mkdir -p ~/.claude
ln -svf $PWD/.claude/CLAUDE.md ~/.claude/CLAUDE.md
ln -svf $PWD/.claude/settings.json ~/.claude/settings.json
ln -svf $PWD/.claude/skills ~/.claude/skills
ln -svf $PWD/.claude/hud ~/.claude/hud
