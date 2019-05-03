# build the document and the svg files
# building the svg files depends on goat (github.com/blampe/goat) and svgcheck
# (https://pypi.org/project/svgcheck/).

html = draft-ietf-tsvwg-datagram-plpmtud.html
text = draft-ietf-tsvwg-datagram-plpmtud.txt

all: $(html) $(text) 

$(html): draft-ietf-tsvwg-datagram-plpmtud.xml svg
	@echo making html
	xml2rfc --v3 --html draft-ietf-tsvwg-datagram-plpmtud.xml

$(text): draft-ietf-tsvwg-datagram-plpmtud.xml svg
	@echo making text
	xml2rfc --v3 --text draft-ietf-tsvwg-datagram-plpmtud.xml

svg: diagrams/dplpmtud-impl-examples.svg diagrams/dplpmtud-phases.svg diagrams/dplpmtud-statemachine.svg diagrams/packet-sizes-relationships.svg

diagrams/dplpmtud-impl-examples.svg: diagrams/dplpmtud-impl-examples.txt
	goat diagrams/dplpmtud-impl-examples.txt > tmp.svg
	svgcheck -r tmp.svg > diagrams/dplpmtud-impl-examples.svg
	rm tmp.svg

diagrams/dplpmtud-phases.svg: diagrams/dplpmtud-phases.txt
	goat diagrams/dplpmtud-phases.txt > tmp.svg
	svgcheck -r tmp.svg > diagrams/dplpmtud-phases.svg
	rm tmp.svg

diagrams/dplpmtud-statemachine.svg: diagrams/dplpmtud-statemachine.txt
	goat diagrams/dplpmtud-statemachine.txt > tmp.svg
	svgcheck -r tmp.svg > diagrams/dplpmtud-statemachine.svg
	rm tmp.svg

diagrams/packet-sizes-relationships.svg: diagrams/packet-sizes-relationships.txt
	goat diagrams/packet-sizes-relationships.txt > tmp.svg
	svgcheck -r tmp.svg > diagrams/packet-sizes-relationships.svg
	rm tmp.svg
