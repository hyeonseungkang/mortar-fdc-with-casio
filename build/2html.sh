#!/bin/sh
# 2html - render a file as html using 2html.vim

opt_body=
css_file=
colorscheme=
source=

file2html() {
	local srcfile="$tmpdir/$(basename "$1")"
	local destfile="$srcfile.html"
	cp "$1" "$srcfile"

	vim -E -c "let g:html_no_progress=1" -c "set syntax=prizmbasic" \
		${colorscheme:+-c "colo $colorscheme"} \
		${source:+-c "source $source"} \
		-c "runtime syntax/2html.vim" \
		-cwqa "$srcfile" >&-

	if test -n "$opt_body"
	then sed -n '/<pre/,/<\/pre>/p'
	else cat
	fi <"$destfile"

	if test -n "$css_file"
	then sed -n '0,/<style/d; /^<!--/d; /^-->/q; p' <"$destfile" \
		>"$css_file"
	fi

	rm "$srcfile" "$destfile"
}

# move to a temp dir so that existing swap files don't interfere
tmpdir=$(mktemp -d)
test -d "$tmpdir" || exit 1
trap "rm -rf $tmpdir" 0 1 2 3 15

cmd=
for arg
do case "$arg" in
	-b|--body) opt_body=1;;
	-c|--css) cmd=css;;
	-o|--colorscheme) cmd=colors;;
	-s|--source) cmd=source;;
	*) case $cmd in
		css) css_file="$arg"; cmd=;;
		colors) colorscheme="$arg"; cmd=;;
		source) source="$arg"; cmd=;;
		*) file2html $arg;;
	esac;;
esac done
