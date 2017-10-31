#!/usr/bin/ruby
mv, mm, mmt = ""
('a'..'z').each { |c|
  mv += "$\\mv#{c}$, "
  mm += "$\\mm#{c}$, "
  mm += "$\\mm#{c}t$, "
}