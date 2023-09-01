# ddos_protection_boiko
<img width="1545" alt="image" src="https://github.com/danylboiko95/ddos_protection_boiko/assets/44903844/2a37db94-4620-4391-83fc-478e7a168d64">

##to run the container

`docker-compose up`

##to run the attack

```./attacker.sh -PARAMETER(-h/-ts/-u/-tf/-tr/-p/-i)```


I've changed the image to `sflow/hping3:latest` because `utkudarilmaz` didn't work on my machine

Some attacks didn't work. So I just run `seige`
#Conclusion
For me, the most obvious and easiest protection is to use Cloudflare or any other provider to limit the load

Other solutions are to block IPs, limit their time, and reduce the number of allowed connections
