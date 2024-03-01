all: draft-ietf-dnsop-rfc7958bis.xml draft-ietf-dnsop-rfc7958bis.txt draft-ietf-dnsop-rfc7958bis.html
	kdrfc -c -t -h draft-ietf-dnsop-rfc7958bis.mkd
	mv draft-ietf-dnsop-rfc7958bis.xml draft-ietf-dnsop-rfc7958bis.v2xml
	mv draft-ietf-dnsop-rfc7958bis.v2v3.xml draft-ietf-dnsop-rfc7958bis.xml

.PRECIOUS: %.xml