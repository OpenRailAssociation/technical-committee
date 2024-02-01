SHELL := /bin/bash

default: charter-pdf

all: charter-pdf charter-docx

charter-pdf:
	cat charter.md > charter-pdf-tmp.md
	printf "\n---\n\nPDF generated from git revision %s. See current file on [GitHub](https://github.com/OpenRailAssociation/technical-committee/blob/main/charter.md).\n" $$(git rev-parse --short HEAD) >> charter-pdf-tmp.md
	pandoc charter-pdf-tmp.md --pdf-engine wkhtmltopdf -o openrail-association-tc-charter.pdf
	rm charter-pdf-tmp.md

charter-docx:
	cat charter.md > charter-docx-tmp.md
	printf "\n---\n\nDocx document generated from git revision %s. See current file on [GitHub](https://github.com/OpenRailAssociation/technical-committee/blob/main/charter.md).\n" $$(git rev-parse --short HEAD) >> charter-docx-tmp.md
	pandoc charter-docx-tmp.md -o openrail-association-tc-charter.docx
	rm charter-docx-tmp.md
