Casio fx-5800P Complex matris çözümü
 
 
**************************************************************************************************************************************************************
 
/*/Açıklamalar...
 
-- Aşağıdaki program Casio fx-5800P hesap makineleri için complex matris 
 
	   çözüm programıdır.
 
-- Programda değerler A.X=B matris formatında istenir.
 
-- Bu işi genelde gördüklerim hesaplarken bir bir değişkenlere kendileri tanımlatıyordu.Ben direk programda değer girilebilir şekilde yaptım.
 
-- Programı Dumlupınar Üniversitesi, Elektrik Elektronik Mühendisliği Bölümünde Devre Teorisi II dersinde yetecek kadar yazdım.(Yani bana 3x3 yetiyordu)
 
-- Siz mantığı kavrayıp daha büyüklerinide daha değişik mantıklar kullanarak yazabilirsiniz.
 
** Aşağıdaki notlarada dikkat ederek programı yazdığınızda direk beyaz Prog butonu aracılığıyla çalıştırabilirsiniz.

>>>Dikkat...!!!
 
-- Programda -> simgesi ile gösterilen ifade hesap makinesinde sağ ok işaretidir.
 
-- Programda ; ifadesi için, hesap makinesinde Enter yani "EXE" ye basın.
-- Küçük x ler Çarpma işlemini temsil etmektedir.
 
-- (!) Shift+x^2 dediğim ifade altta küçük üçgen çıkartır ona dikkat...! (Polar açısı için)
 
-- ANA MENU haricindeki program parçaları makineye ayrı ayrı kaydedilecek ve isimleri program başındaki "2x2" ve "3x3" (parantezler hariç) 
   olmazsa program çalışmaz.Daha doğrusu menu kısmı kullanılamaz direk 2x2 programına girmeniz gerekir...
 
-- Boşluk sayılarıda hesap makinesinin ekranına tam uyumlu olarak bırakılmıştır.
 
//Öğrenci Arkadaşlara Başarılar Diliyorum...
 
Not: Bu programın ilkel versiyonunu zamanında kimse kimseye vermek istememesi üzerine, 2 gece hesap makinesi kitapçığı incelenerek hazırlandı. :)
 
****ORHAN YILMAZ****
 
*************************************************************************************************************************************************************
*//
==========CODES========================================

//BAŞLA...
 
#--------Code-----ANA MENU----
 
Do:	"...ANA MENU...";
 
	"2x2[1]   3x3[2]";
 
	".-------------.";
 
	?->A;
 
	Cls;
 
	If A=1:Then Prog"2x2"(SHİFT+X^2)
 
	Else A=2:Prog"3x3"(SHİFT+X^2)
 
	IfEnd:Cls;
 
	"ISLEM TAMAM...";
 
	"---------------";
 
	"---CODER:";
 
	".ORHAN YILMAZ."(SHİFT+X^2);
 
	"MENU[1] CIKIS[AC]";
 
  "....ORELTEK....";
 
	?->A;
 
	Cls;
 
LpWhile A=1;
 
#----------------ANA MENU-END---
 
//2x2 Matris çözümü:
 
#-------Code------2x2---
 
"------2x2------";
 
"A11="?->A;
 
"A12="?->B;
 
"A21="?->C;
 
"A22="?->D;
 
"B1="?->E;
 
"B2="?->F;
 
Cls;
 
"SONUCLAR...";
 
"X1=":(ExD-BxF)/(AxD-BxC)>r<Q (SHİFT+X^2)
 
"X2=":(AxF-ExC)/(AxD-BxC)>r<Q
 
#----------------2x2-END----
 
//3x3 Matris Çözümü:
 
#-------Code------3x3---
 
"......3x3......";
 
"A11="?->A;
 
"A12="?->B;
 
"A13="?->C;
 
"A21="?->D;
 
"A22="?->E;
 
"A23="?->F;
 
"A31="?->G;
 
"A32="?->H;
 
"A33="?->I;
 
"B1="?->J;
 
"B2="?->K;
 
"B3="?->L;
 
Cls;
 
"SONUCLAR...";
 
"X1=":(JxExI+KxHxC+LxBxF-CxExL-FxHxJ-IxBxK)/(AxExI+DxHxC+GxBxF-CxExG-FxHxA-IxBxD)>r<Q (SHİFT+X^2)
 
"X2=":(AxKxI+DxLxC+GxJxF-CxKxG-FxLxA-IxJxD)/(AxExI+DxHxC+GxBxF-CxExG-FxHxA-IxBxD)>r<Q (SHİFT+X^2)
 
"X3=":(AxExL+DxHxJ+GxBxK-JxExG-KxHxA-LxBxD)/(AxExI+DxHxC+GxBxF-CxExG-FxHxA-IxBxD)>r<Q
 
#----------------3x3-END----
 
//BİTTİ buraya kadardı. :)
