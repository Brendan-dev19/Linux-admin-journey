greet() {
  echo "Hello, $1!"
}

gitpush() {
  git add .
  git commit -m "$1"
  git push origin main
}

mkcd() {
  mkdir -p "$1" && cd "$1"
}

