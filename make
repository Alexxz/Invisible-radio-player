mtasc -swf bin/test.swf -main -version 8 -header 800:600:1 src/test.as

# you can add your post_make file to make something after building
# for example you can copy .swf file to http server directory
  
if [ -e post_make ]; then
	./post_make
fi
