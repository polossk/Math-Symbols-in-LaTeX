#!/usr/bin/ruby
f = File.new("math-symbols.tex", 'w+')
mv, mm, mt = [], [], []

lower = proc { |c| [c, c, c] }
upper = proc { |c| [c, c.upcase, c.upcase] }

('a'..'z').each { |c|
  mv << ("\\newcommand\\mv%s{{\\bm %s}}#{' ' * 16}%% vector %s\n" % lower.(c))
  mm << ("\\newcommand\\mm%s{{\\mathbf %s}}#{' ' * 12}%% matrix %s\n" % upper.(c))
  mt << ("\\newcommand\\mm%st{{{\\mathbf %s}^T}}#{' ' * 12}%% matrix %s^T\n" % upper.(c))
}
[mv, mm, mt].each{ |s|
  s.each { |t| f.write(t) }
}
# f.close()