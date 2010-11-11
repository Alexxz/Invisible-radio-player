mtasc -swf bin/test.swf -main -header 800:600:1 src/test.as
if [ -e post_make ]; then
	./post_make
fi
