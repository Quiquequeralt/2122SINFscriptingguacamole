 

# File that contains functions for menues and browsing

main_menu () {
  echo "Please, choose an option:">&2
  echo "1 .- Virus scan options">&2
  echo "2 .- Analyse directories">&2
  echo "3 .- Whatever...">&2

}

provide_dir () {
  echo "Please, provide a directory"
  read $Dir
exit $Dir
}
