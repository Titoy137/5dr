uses crt;
var
 s: integer;
 i, n, max, d, z: integer;
  t:text;
   a: array [1..20] of integer;
   //
procedure proc1;
const nmax=100;
var a,b:array[1..nmax] of integer;
    n,i,j,k:integer;
    f:boolean;
begin
clrscr;
writeln('Исходный массив:');
for i:=1 to n do
 begin
   readln(s);
  a[i]:=s;
  write(a[i],' ');
 end;
writeln;
for i:=1 to n do
b[i]:=-1;
for i:=1 to n do
 begin
  k:=0;
  for j:=1 to n do
  if a[j]<a[i] then k:=k+1;
  b[k+1]:=a[i];
 end;
for i:=2 to n do
if b[i]=-1 then b[i]:=b[i-1];
writeln('Отсортированный массив:');
for i:=1 to n do begin
write(b[i],' ');
end;
readkey;
end;
//
procedure proc2(n: integer); 
var key,i, j,count: integer;
begin
for i:=1 to n do
begin
count:=A[i]; key:=i;
for j:=i+1 to n do
if (A[key]>A[j]) then key:=j;
if (key<>i) then
begin
A[i]:=A[key];
A[key]:=count;
end;
end;
end;
//
begin
  assign(t, 'e:\5др\text.txt');
  reset(t);
  i := 1;
  while not eoln(t) do 
  begin
    Read(t, a[i]);
    i += 1;
  end;
  close(t);
  rewrite(t);
//
repeat
  writeln('                         ВЫБОР МЕТОДА СОРТИРОВКИ');
  writeln('Сортировать с помощью алгоритма подсчетом -->1');
  writeln('Сортировать с помощью алгоритма слияния --> 2');
  writeln('Выход --> 0');
  readln(z);
  case z of
    1:PROC1;
    2:proc2(20);
  end;
  until z =0;
  //
    for i:=1 to 20 do
    begin
    write(t,a[i]);
    write(t,' ');
    end;
  close(t);
end.