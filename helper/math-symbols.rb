#!/usr/bin/ruby
f = File.new("math-symbols.tex", 'w+')
mv, mm, mt, ts = [], [], [], []

lower = proc { |c| [c, c, c] }
upper = proc { |c| [c, c.upcase, c.upcase] }

('a'..'z').each { |c|
  mv << ("\\newcommand\\mv%s{{\\bm %s}}#{' ' * 35}%% vector %s\n" % lower.(c))
  mm << ("\\newcommand\\mm%s{{\\mathbf %s}}#{' ' * 31}%% matrix %s\n" % upper.(c))
  mt << ("\\newcommand\\mm%st{{{\\mathbf %s}^T}}#{' ' * 26}%% matrix %s^T\n" % upper.(c))
  ts << ("\\newcommand\\mm%s{{\\mathsf %s}}#{' ' * 31}%% tensor %s\n" % upper.(c))
}
[mv, mm, mt, ts].each{ |s|
  s.each { |t| f.write(t) }
}
# f.close()