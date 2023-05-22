# function definitions

# only applies for gnome-based things
function set-text() {
    gsettings set org.gnome.desktop.interface text-scaling-factor $1
}
