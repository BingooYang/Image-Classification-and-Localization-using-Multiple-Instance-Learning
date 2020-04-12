#For resnet

mkdir terminal_logs
declare -a ZOOM=(40 100 200 400)
declare -a epoch=(10)
# declare -a epoch=(1 2 3 4 5 6 7 8 9 10)

for i in "${ZOOM[@]}"
do
	for j in "${epoch[@]}"
	do
		echo "$i"
		echo "$j"
		python resnet_pre.py --epochs=$j --zoom=$i |& tee terminal_logs/op_zoom_$i_epoch_$j.txt
		# python vgg_pre.py --epochs=$j --zoom=$i |& tee terminal_logs/op_zoom_$i_epoch_$j.txt
	done
done
