awk -F'/' '{if($2=="usr") print $4}' /etc/shells
