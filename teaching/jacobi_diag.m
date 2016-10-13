function x_new = jacobi_diag(A, x_0, b, m )
  
  n = length(b);
  D = diag(diag(A));
  
  for k = 1:m
      x_new = D^-1 * ((D - A)*x_0 + b);
      x_0 = x_new;
  end
  
  