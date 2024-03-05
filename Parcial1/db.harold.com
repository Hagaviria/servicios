;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	harold.com. root.harold.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.harold.com.
ns	IN	A	192.168.50.3
server  IN      CNAME   ns
client  IN      A       192.168.50.2
mail    IN      CNAME   ns
web     IN      CNAME   harold.com
parcial IN      CNAME   ns

