#!/usr/bin/python
pharse = [ ]

def azip(l, n):
	l.extend([""] * (n - len(l) % n))
	m = len(l) // n
	# return list(zip(*(l[i::n] for i in range(n))))
	return list(zip(*(l[(i*m):(i*m+m)] for i in range(n))))

def ph2tex(s):
	if len(s) == 0: return " & "
	return "${0}$ & \\lstinline`{0}`".format(s)

def bldtab(ph, k):
	ph = [ph2tex(s) for s in ph]
	return [' & '.join(list(line)) + r'\\' for line in azip(ph, k)]

print('\n'.join(bldtab(pharse, 5)))