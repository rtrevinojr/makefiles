
pattern := .*\.java

file-name-1 := <file-name>

hello:
	echo 'Linux makefile'
	
	
grep:
	grep ${pattern} ${file-name-1}
	
# i = ignore case
grep/i:
	grep -i ${pattern} ${file-name-1}
	
# n = line numbers
grep/n:
	grep -n ${pattern} ${file-name-1}

# l = --files-with-match
grep/l:
	grep -f ${pattern} ${file-name-1}

# L = --files-without-match
grep/L:
	grep -L ${pattern} ${file-name-1}

# c = --count (count per file)
grep/c:
	grep -c ${pattern} ${file-name-1}

# r = --recursive
grep/r:
	grep -r ${pattern} ${file-name-1}
	
# -o, --only-matching
grep/o:
	grep -o ${pattern} ${file-name-1}

sed:
	sed 's/${regexpr}/${replacement}/${flags}' ${file-name-1}

sed/json:
	sed -E 's/("ts": ")(\d+)(",[\s\S]+?)("id": "JSON_PROPERTY_VALUE_PREFIX_\d+",[\s\S]+?)("val": ")(\d+\.\d+)/test/g' input.json > out.json





## Windows Grep (findstr) ##
# The parameters have the following meanings:
# s = recursive
# p = skip non-printable characters
# i = case insensitive
# n = print line numbers
# And the string to search for is the bit you put in quotes after /c:
dos/findstr:
	findstr /spin /c:"pattern" ${file-name}
	
