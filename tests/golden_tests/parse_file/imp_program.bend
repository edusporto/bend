type Point:
  Point { x, y }

type Bool:
  True
  False


def symbols():
  x = { `x`: 5, 2: 3 };
  x[`x`] = 2;
  x[2] = 3;
  return x[`x`] + `foxy`;

def mk_point():
  return Point/Point(y = 2, x = 1);

def identity(x):
  return x;

def inc(n):
  n += 1;
  return n;

#def inc_list(list):
#  return [x+1 for x in list];

def lam():
  return lambda x, y: x;

def do_match(b):
  match b:
    case Bool/True:
      return 1;
    case Bool/False:
      return 0;

def true():
  return Bool/True;

def fib(n):
  if n < 2:
    return n;
  else:
    return fib(n - 1) + fib(n - 2);

def swt(n):
  switch n:
    case 0:
      return 42;
    case _:
      return 1;

def fld(list):
  fold list:
    case List/cons:
      return 1;
    case List/nil:
      return 2;

def bnd():
  bend x = 0:
    when x < 10:
      return List/cons(x fork(x + 1));
    else:
      return List/nil();

def era():
  * = (2 + 3)
  the_expr_killer = *
  return the_expr_killer(9)

def main():
  do IO:
    x <- IO.read();
    return x;
