import urllib2
import settings
msj = urllib2.urlopen(settings.MAILER_URL).read()
if(msj == "ok"):
	print "todo salio bien"