all: draft-ietf-dnsop-rfc7958bis.xml draft-ietf-dnsop-rfc7958bis.txt draft-ietf-dnsop-rfc7958bis.html
	kdrfc -c -t -h draft-ietf-dnsop-rfc7958bis.mkd 2>/tmp/kram-errors.txt
	grep --regexp=Ignoring --invert-match /tmp/kram-errors.txt || true
	mv draft-ietf-dnsop-rfc7958bis.xml draft-ietf-dnsop-rfc7958bis.v2xml
	mv draft-ietf-dnsop-rfc7958bis.v2v3.xml draft-ietf-dnsop-rfc7958bis.xml

.PRECIOUS: %.xml