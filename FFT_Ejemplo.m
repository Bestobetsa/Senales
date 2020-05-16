pkg load control
pkg load signal
k=0:31;
Tm=1/2000;
n=0:31;
for m=0:32 #obtener la fft para 33 senales coseno de diferente frecuencia
  x=cos(2*pi*m*62.5*n*Tm); #n*Tm es el tiempo m*62.5 es a frecuencia
  X=fft(x);
  subplot(3,1,1); #senal muestreada
    stem(k,x);
    titulo=sprintf("x[n]=cos(2*pi*%d*t)",62.5*m);
    title(titulo);
    axis([0,31,-1.5,1.5]);
  subplot(3,1,2); #parte real de la senal muestreada
    stem(k,real(X));
    title("Parte real de la transformada discreta de Fourier de x[n]");
    axis([0,31,-33,33]);
  subplot(3,1,3); #Parte imaginaria de la senal muestreada
    stem(k,imag(X));
    title("Parte imaginaria de la transformada discreta de Fourier de x[n]");
    axis([0,31,-33,33]);
  nombre=sprintf("Figura2d.jpg",m)
  print(nombre)
  endfor
