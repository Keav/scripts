# Git Bash Custom Config Files

By default, bash config files are stored in and read from `C:\Users\Username\` aka `~/`

To ease backup and distribution of these files, create another folder somehwere e.g. `c:/scripts/` or `.../dropbox/scripts/` and move the files to this new location.

Then configure symlinks to point from the default location to the new, e.g.:

`ln -s c:/scripts/.bashrc ~/.bashrc`
`ls -s c:/scripts/.profile ~/.profile`

Then you can simply use GitHub, or DropBox, to backup and sync your files to other machines.