#!/bin/bash
# created by Cyber 
if [ -e "/var/lib/premium-script" ]; then
		clear
	else
		mkdir /var/lib/premium-script;
fi

username=test
password=pass
expiry=1
today=`date +%s`
expiry_date=$(( $expiry * 86400 ))
expiry_day=$(($today + $expiry_date))
MYIP=$(wget -qO- ipv4.icanhazip.com)
echo "$username	*	$password	*" >> /etc/ppp/chap-secrets
echo "$username *   $password   *  $expiry_day"  >> /var/lib/premium-script/data-user-pptp
fi 
