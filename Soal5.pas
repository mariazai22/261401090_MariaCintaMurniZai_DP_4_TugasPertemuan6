{ 
  Nama File : Soal5.pas
  Deskripsi : Program untuk menampilkan deret bilangan (Fibonacci, Geometri, Kuadrat, dan Aritmatika Bertingkat) 
              menggunakan konsep fungsi (function) sesuai Modul VI Tugas nomor 5.
}

program Soal5;
uses crt;

{ --------------------------------------------------------- }
{ 1. FUNGSI UNTUK DERET FIBONACCI (a)                       }
{ Menghitung nilai suku ke-n dari deret Fibonacci           }
{ --------------------------------------------------------- }
function fibonacci(n: integer): longint;
begin
   if n <= 0 then
      fibonacci := 0
   else if n = 1 then
      fibonacci := 1
   else if n = 2 then
      fibonacci := 1
   else
      fibonacci := fibonacci(n - 1) + fibonacci(n - 2);
end;

{ --------------------------------------------------------- }
{ 2. FUNGSI UNTUK DERET GEOMETRI (b)                        }
{ Deret: 1, 2, 4, 8, 16, 32, ... (Suku ke-n = 2^(n-1))      }
{ --------------------------------------------------------- }
function geometri(n: integer): longint;
var
   i: integer;
   hasil: longint;
begin
   hasil := 1;
   for i := 2 to n do
   begin
      hasil := hasil * 2;
   end;
   geometri := hasil;
end;

{ --------------------------------------------------------- }
{ 3. FUNGSI UNTUK DERET KUADRAT (c)                         }
{ Deret: 1, 4, 9, 16, 25, 36, ... (Rumus: n * n)            }
{ --------------------------------------------------------- }
function kuadrat(n: integer): longint;
begin
   kuadrat := n * n;
end;

{ --------------------------------------------------------- }
{ 4. FUNGSI UNTUK DERET ARITMATIKA BERTINGKAT (d)           }
{ Deret: 2, 6, 12, 20, 30, 42, ... (Rumus: n * (n + 1))     }
{ --------------------------------------------------------- }
function aritmatikaBertingkat(n: integer): longint;
begin
   aritmatikaBertingkat := n * (n + 1);
end;

{ --------------------------------------------------------- }
{ PROGRAM UTAMA                                             }
{ --------------------------------------------------------- }
var
   n, i: integer;

begin
   clrscr;
   
   { Meminta input jumlah suku dari pengguna }
   write('Masukkan jumlah suku (n): ');
   readln(n);
   
   writeln('---------------------------------------------');
   writeln('Output Deret Bilangan:');
   writeln('---------------------------------------------');
   
   { a. Menampilkan deret Fibonacci }
   write('a. ');
   for i := 1 to n do
   begin
      if i = n then
         write(fibonacci(i))
      else
         write(fibonacci(i), ', ');
   end;
   writeln;
   
   { b. Menampilkan deret Geometri }
   write('b. ');
   for i := 1 to n do
   begin
      if i = n then
         write(geometri(i))
      else
         write(geometri(i), ', ');
   end;
   writeln;
   
   { c. Menampilkan deret Kuadrat }
   write('c. ');
   for i := 1 to n do
   begin
      if i = n then
         write(kuadrat(i))
      else
         write(kuadrat(i), ', ');
   end;
   writeln;
   
   { d. Menampilkan deret Aritmatika Bertingkat }
   write('d. ');
   for i := 1 to n do
   begin
      if i = n then
         write(aritmatikaBertingkat(i))
      else
         write(aritmatikaBertingkat(i), ', ');
   end;
   writeln;
   
   writeln('---------------------------------------------');
   readln;
end.