# rmux (
#   stands for: restore tmux
#   read: remuks, aku tanpamu butiran debu
# )
SESSIONNAME="script"
tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ] 
 then
    tmux new-session -s $SESSIONNAME -n script -d
fi

tmux attach -t $SESSIONNAME