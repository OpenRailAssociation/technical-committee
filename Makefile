SHELL := /bin/bash

charter-pdf:
	cat charter.md > charter-tmp.md
	printf "\n---\n\nPDF generated from git revision %s. See current file on [GitHub](https://github.com/OpenRailAssociation/technical-committee/blob/main/charter.md).\n" $$(git rev-parse --short HEAD) >> charter-tmp.md
	pandoc charter-tmp.md --pdf-engine wkhtmltopdf -o openrail-association-tc-charter.pdf
	rm charter-tmp.md
