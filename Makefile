all: draft-bash-rfc7958bis.txt

.PRECIOUS: %.xml

%.txt: %.xml
	xml2rfc $<

%.xml: %.mkd
	kramdown-rfc $< >$@.new
	mv $@.new $@

