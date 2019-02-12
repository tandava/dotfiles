real_script_dir="$(dirname "$(stat -f '%Y' ~/.zshrc)")"

# Load the shell dotfiles:
for file in "$real_script_dir"/zsh/.{zshdefault,exports,aliases,functions,offline}; do
  # source `file` if it's a `readable file`
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
