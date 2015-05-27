alias reload="source ~/.bashrc"

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

ck()
{
	cd "d:\_Developer\Web\Projects\chriskeavey";
	"C:\Program Files\Sublime Text 3\sublime_text.exe" "chriskeavey.sublime-project" &
    grunt &
}

ctl()
{
	cd "d:\_Developer\Web\Projects\cambriantransport";
	"C:\Program Files\Sublime Text 3\sublime_text.exe" "cambriantransport.sublime-project" &
	grunt &
}

btr()
{
	cd "d:\_Developer\Web\Projects\Barry-Tourist-Railway";
	"C:\Program Files\Sublime Text 3\sublime_text.exe" "barrytouristrailway.sublime-project" &
	grunt &
}

brc()
{
	cd "d:\_Developer\Web\Projects\Barry-Rail-Centre";
	"C:\Program Files\Sublime Text 3\sublime_text.exe" "barryrailcentre.sublime-project" &
    grunt &
}