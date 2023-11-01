function sshvpn
    if count $argv > /dev/null
    #    sshuttle --dns -vr $argv 0/0 -N --no-latency-control --latency-buffer-size 511
         ssh -N -D 1080 -o ServerAliveCountMax=3 -o ServerAliveInterval=15 -o ExitOnForwardFailure=yes -p $argv 
    end 
end
