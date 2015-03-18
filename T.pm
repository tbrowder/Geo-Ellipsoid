class T;

has $.a is rw;
has $.b is rw;
has $.c is rw;

submethod BUILD(
		# set defaults here
		:$!a = 15,
		:$!b,
		:$!c,
	       ) {
  self.set_b;
}

multi method set_b {
  if (self.a < 10) {
    self.b = 1;
  }
  else {
    self.b = 0;
  }
}

multi method set_b($x) {
  self.b = $x;
}
