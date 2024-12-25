alias() {
  if [ "$#" -eq 0 ]; then
    # Display all aliases with their comments
    builtin alias | while read -r al; do
      # Extract just the alias name (everything before the = sign)
      name=$(echo "$al" | cut -d'=' -f1)
      # Search for the alias definition and any comment above it in relevant config files
      {
        grep -B 1 "^[[:space:]]*alias[[:space:]]*$name=" ~/.zshrc 2>/dev/null
        grep -B 1 "^[[:space:]]*alias[[:space:]]*$name=" ~/.oh-my-zsh/custom/**/*.zsh 2>/dev/null
      } | grep -v "^--$" | awk '!seen[$0]++' | sed 's/^alias //'
    done | awk '!seen[$0]++'
  else
    # Default behavior for creating aliases
    builtin alias "$@"
  fi
}
