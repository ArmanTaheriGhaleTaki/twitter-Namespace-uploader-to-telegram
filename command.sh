python3 -m venv venv  
source venv/bin/activate

twspace_dl -i $space_link -t cookie.txt


ffmpeg -i $space_link -f segment -segment_time 3600 -c copy $space_link%01d.m4a
