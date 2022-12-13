uses CRT;
var n:byte;
function func(var x:real):real;
begin
  var f:real;
  f:=(1*power(x,3)+(-1)*power(x,2)+(3)*x+(5));
  func:=f;
end;

function pervoobr(x:real):real;
begin
pervoobr:=1/2*power(x,4)-1/3*power(x,3)+5/2*power(x,2)+3*x;
end;

procedure ploshad;
begin
  println('Введите пределы интегрирования');
  var a := ReadInteger('Первая координата:');
  var b := ReadInteger('Вторая координата:');
  var n := ReadInteger('Количество секций:');
  var h:=(b-a)/n;
  var f:real;
  var x:=a+h;
  var s:real;
  for var i:=0 to n-1 do begin
    s+=func(x);
    x+=h;
  end;
  s:=s*h;
  println('Площадь:',s);
  Textcolor(4);
  Println('****************************************************');
  Textcolor(15);
  println('Для вычисления погрешности введите 2');
  println('Чтобы выйти из программы введите любой другой символ');
  readln(n);
  if n=2 then begin
  var y:=pervoobr(b)- pervoobr(a);
  writeln('Погрешность = ',abs(y-s)/y);
  Textcolor(4);
  Println('****************************************************');
  Textcolor(15);
  end;
end;

begin
    Textcolor(4);
    Println('****************************************************');
    Textcolor(15);
    Println('Вычисление площади фигуры, ограниченной кривой');
    println('Для вычисления площади введите 1');
    println('Чтобы выйти из программы введите любой другой символ');
    Textcolor(4);
    Println('****************************************************');
    Textcolor(15);
    readln(n);
    if n=1 then ploshad;
end.