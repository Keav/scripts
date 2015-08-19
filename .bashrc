# alias reload="source ~/.bashrc"

web()
{
	cd "d:\_Developer\Web";
}

subl()
{
	"C:\Program Files\Sublime Text 3\subl.exe" $@ &
}

keav()
{
	cd "d:\_Developer\Web\Projects\keav";
	"'C:\Program Files\Sublime Text 3\sublime_text.exe' keav.net.sublime-project &"
    grunt &
}
