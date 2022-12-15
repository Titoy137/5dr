uses crt;
var
s: integer;
i, n, max, d, z: integer;
t:text;
a: array [1..20] of integer;
//
procedure proc0;
begin
clrscr;
writeln('исходный код : ');
assign(t, 'e:\5др\text.txt');
reset(t);
i := 1;
while not eof(t) do
begin
Read(t, a[i]);
write(a[i],' ');
i += 1;
end;
close(t);
readkey;
clrscr;
end;
//
procedure proc1;
var b:array[1..20] of integer;
n,i,j,k:integer;
begin
clrscr;
writeln;
for i:=1 to 20 do
b[i]:=-1;
for i:=1 to 20 do
begin
k:=0;
for j:=1 to 20 do
if a[j]<a[i] then k:=k+1;
b[k+1]:=a[i];
end;
for i:=2 to 20 do
if b[i]=-1 then b[i]:=b[i-1];
writeln('Отсортированный методом аглоритма подсчета :');
for i:=1 to 20 do begin
write(b[i],' ');
end;
readkey;
clrscr;
end;
//
procedure proc2(n: integer);
var key,i, j,count: integer;
begin
clrscr;
for i:=1 to n do
begin
count:=a[i]; key:=i;
for j:=i+1 to n do
if (a[key]>a[j]) then key:=j;
if (key<>i) then
begin
A[i]:=A[key];
A[key]:=count;
end;
end;
writeln('');
writeln('отсортированный массив слиянием : ');
for i:=1 to 20 do begin
write(a[i],' ');
end;
readkey;
clrscr;
end;
//
begin
clrscr;
assign(t, 'e:\5др\text.txt');
reset(t);
i := 1;
while not eoln(t) do
begin
Read(t, a[i]);
i += 1;
end;
close(t);
//
repeat
writeln(' ВЫБОР МЕТОДА СОРТИРОВКИ');
writeln('Увидеть исходный код —> 1');
writeln('Сортировать с помощью алгоритма подсчетом —> 2');
writeln('Сортировать с помощью алгоритма слияния —> 3');
writeln('Выход —> 0');
readln(z);
case z of
1:proc0;
2:PROC1;
3:proc2(20);
end;
until z =0;
//
end.  