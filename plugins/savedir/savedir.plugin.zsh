# plugin for switching between shell sessions whilst maintaining the current working directory.
# Use sd or save_dir to save out the current dir and gd or get_dir to chage to the last saved directory.

export DIR_SAVE_FILE=/var/tmp/saved_dir # change this at will.

function save_dir {
    pwd > $DIR_SAVE_FILE
}

function get_dir {
    cd $(cat $DIR_SAVE_FILE)
}


alias sd=save_dir
alias gd=get_dir
