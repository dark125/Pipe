open FILE, "<OTTPLAYER-TV-DEMO.m3u";
@fichero = <FILE>;
close FILE;
 
open FILE, ">OTTPLAYER-TV-DEMO.m3u";
for (@fichero) {
    s/^http\:\/\//pipe\:\/\/\/usr\/bin\/ffmpeg\ \-loglevel\ fatal\ \-re\ \-i\ http\:\/\//g;
    print FILE $_;
}
close FILE;









