alias reload="source ~/.bashrc"

web()
{
	cd "d:\_Web Development\_GitHub";
}

subl()
{
	"C:\Program Files\Sublime Text 3\subl.exe" $@ &
}

keav()
{
	cd "D:\_Web Development\_GitHub\keav";
	"'C:\Program Files\Sublime Text 3\sublime_text.exe' keav.net.sublime-project &"
    grunt &
}

ck()
{
	cd "d:\_Web Development\_GitHub\chriskeavey";
	"C:\Program Files\Sublime Text 3\sublime_text.exe" "chriskeavey.sublime-project" &
    grunt &
}

ctl()
{
	cd "D:\_Web Development\_GitHub\cambriantransport";
	"C:\Program Files\Sublime Text 3\sublime_text.exe" "cambriantransport.sublime-project" &
	grunt &
}

btr()
{
	cd "D:\_Web Development\_GitHub\Barry-Tourist-Railway";
	"C:\Program Files\Sublime Text 3\sublime_text.exe" "barrytouristrailway.sublime-project" &
	grunt &
}

brc()
{
	cd "D:\_Web Development\_GitHub\Barry-Rail-Centre";
	"C:\Program Files\Sublime Text 3\sublime_text.exe" "barryrailcentre.sublime-project" &
    grunt &
}