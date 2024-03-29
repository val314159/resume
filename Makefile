call:: clean tree all
all::
	tailwindcss -mo public/style.css
	python -m filter <public/ndx.html >public/index.html
	python -m http.server 9001
clean::
	find . -name \*~ -o -name .\*~ | xargs rm -fr
realclean:: clean
	rm -fr node_modules bun.lockb yarn.lock package-lock.json
	rm -fr public/style.css public/index.html
	rm -fr auto-save-list __pycache__
tree::
	tree -I .git -I node_modules -aSF
