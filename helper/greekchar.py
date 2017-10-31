#!/usr/bin/python
ch = [ "alpha", "beta", "gamma", "delta", "epsilon",
  "zeta", "eta", "theta", "iota", "kappa", "lambda",
  "mu", "nu", "xi", "pi", "rho", "sigma", "tau",
  "upsilon", "phi", "chi", "psi", "omega" ]

mv = "\\newcommand\\mv{0}{{{{\\bm \\{0}}}}}  % vector {0}"
for e in ch:
    print(mv.format(e))

tex = map(lambda s: "$\mv{}$".format(s), ch)
print(', '.join(list(tex)))

ch2 = [ "Gamma", "Delta", "Theta", "Lambda", "Xi",
  "Pi", "Sigma", "Upsilon", "Phi", "Psi", "Omega" ]

mm = "\\newcommand\\mm{1}{{{{\\bm \\{0}}}}}   % matrix {0}"
mt = "\\newcommand\\mm{1}t{{{{{{\\bm \\{0}}}^T}}}}   % matrix {0}^T"
for host in [mm, mt]:
    for e in ch2:
        print(host.format(e, e.lower()))

tex = map(lambda s: "$\mm{}$".format(s.lower()), ch2)
print(', '.join(list(tex)))

tex = map(lambda s: "$\mm{}t$".format(s.lower()), ch2)
print(', '.join(list(tex)))