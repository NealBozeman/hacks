Neal Hacks
====

cache bust css and js files
-----
This will append random numbers on the ends of js and css requests in order to break a browser's cache, being careful not to ruin additional parameters on the querystring. 


You can play with my expression here
https://regex101.com/r/uX5kL7/1

matches all instances
	([\'\"])([a-zA-Z\.0-9\/_-]+?(\.js\b|\.css\b))([\?]{0,1})([^\'\"\.]*)([\"\'])


sample data
"/jsfile.js?v=d"
"/jsfild-fde.js?v=d&safdsaf=234234"
"/jsfild-fde.min.map.js?v=d&safdsaf=234234"
'/jsfile.js'
"/cssfile.css"
"/cssfile.php.js.not.a.match"
"/cssfiles.js.php"

##replacement expression

set $rand1 and $rand2 to any random num

	$1$2?$rand1=$rand2&$5$1


Eclipse Builder Sync
-----
/dev/sync-project.sh orig dest time-in-minutes


mysql
-----
Turn on logging to watch queries while service running
	SET GLOBAL general_log_file = 'allqueries.log';
	SET GLOBAL general_log = 'ON';
	
Slow query log without restart
	SET GLOBAL slow_query_log_file = 'slow_query.log'; 
	SET GLOBAL long_query_time = 10; 
	SET GLOBAL slow_query_log = 'ON';
	SET GLOBAL log_queries_not_using_indexes = 'ON'; 
	FLUSH LOGS; 

Dump DB structure without data (use mysqldump -d)
	mysqldump -d -h localhost -u root -pmypassword databasename > dumpfile.sql


tomcat
----
Faster tomcat loads on linux if low entropy enviro (not needed on Java8+)
	-Djava.security.egd=file:/dev/./urandom
	
strace
	sudo strace -ff -e trace=file -p 36056
	

windows
----
Hosts file location
	c:\Windows\System32\Drivers\etc\hosts




