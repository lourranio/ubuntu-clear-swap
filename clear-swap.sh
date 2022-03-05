echo “Limpando Cache e Swap…”

free -m 
echo 3 > /proc/sys/vm/drop_caches
sysctl -w vm.drop_caches=3
swapoff -a && swapon -a

free -m 
echo “Concluido!"
