.PHONY: build clean

build: resume.pdf

resume.md: values.yaml src/resume.md templates/markdown.yaml
	, helm template resume . | yq -r '.markdown' > resume.md

resume.pdf: resume.md filters/columns.lua
	pandoc --lua-filter=filters/columns.lua resume.md -o resume.pdf

clean:
	rm -f resume.md resume.pdf
