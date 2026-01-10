/*
			**** EJEMPLO DE CLASES ****
	El presente código implementa la creación de clases asi como 
	variables locales.
	Variable local : Solo puede acceder dentro de la clase 
	Variable : Puede accederse desde clases externas
	para analizar como no es posible acceder a la variable local 
	descomentar la linea de  EC.Y para analizar el error que 
	marca.
	
*/

//Creación de la clase
class Ejemplo_Clases;
  
  //Definición de Variables
  bit [3:0] X = 4'b1010;
  
  local bit [3:0] Y = 4'b1011;
  
endclass

//Definición del módulo
module Testbench;
  
  //Manejador del tipo de la clase
  Ejemplo_Clase EC;
  
  
  
  initial begin
    EC = new(); //Inicialización de la variable 
    
	//Monitoreo en consola
    $display("Valor de X: ", EC.X);
  	#10;
   // $display("Valor de Y: ", EC.Y);
  end
  
endmodule