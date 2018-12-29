open FILE, "<OTTPLAYER-TV-DEMO.m3u";
@fichero = <FILE>;
close FILE;
 
open FILE, ">OTTPLAYER-TV-DEMO.m3u";
for (@fichero) {
    s/\.m3u8/\.m3u8\ \-map\ 0\ \-c\ copy\ \-metadata\ service_name\=\CLAROS\ \-f\ mpegts\ pipe\:1/g;
    print FILE $_;
}
close FILE;



