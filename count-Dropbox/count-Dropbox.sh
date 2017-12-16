# verifica se baixou todo o compartilhamento do dropbox
c=0

while [ $c -le 60 ]
do
	find Dropbox -type f | wc -l > count-Dropbox.txt
	sleep 1
	(( c++ ))
done

if [ `cat count-Dropbox.txt` -eq 19451 ]; then
	
	c=0
	while [ $c -le 3 ]; do
		paplay complete.oga
		sleep 1
		((c++))
	done

fi
